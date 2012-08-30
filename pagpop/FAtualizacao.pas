unit FAtualizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Buttons, ExtCtrls;

type
  TFrmAtualizacao = class(TForm)
    pnlTop: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    rgTipoAtua: TRadioGroup;
    txtMsg: TStaticText;
    pnlBotoes: TPanel;
    btnSalvarLog: TBitBtn;
    btnOk: TBitBtn;
    pnlAnimacao: TPanel;
    pbBarra: TProgressBar;
    pnlLog: TPanel;
    Label3: TLabel;
    mmoLog: TMemo;
    dlgSave1: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure rgTipoAtuaClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnSalvarLogClick(Sender: TObject);
  private
    { Private declarations }
    procedure AtivaConexao;
    procedure AtivaConexaoLocal;
    procedure MensUsuario(sMensagem : String);
    procedure Log(sMensagem : String);
    function MontaInsertLocal : string;
    procedure Barra(iPosicao:Integer);
    function CopiaWebSiteParaSigac : Boolean;
    function CopiaSigacParaWebSite : Boolean;
  public
    { Public declarations }
  end;

var
  FrmAtualizacao: TFrmAtualizacao;

implementation

uses  udm, funcoes, umanu,uimp, uConnect, Math, MaskUtils, StrUtils;

{$R *.dfm}

procedure TFrmAtualizacao.AtivaConexao;
begin
  // Testa conex�o e inicializa variaveis
  TestCryptoIni;

  fdm.conectnet.Disconnect;
  ipnet       :=  sWebHost;
  databasenet :=  sWebDb;
  Usernet     :=  sWebUser;
  Passwordnet :=  sWebPwd;
end;

procedure TFrmAtualizacao.AtivaConexaoLocal;
begin
  // Testa conex�o e inicializa variaveis
  TestCryptoIni;

  fdm.conector.Disconnect;
  ip          :=  sLocalHost;
  databasename:=  sLocalDb;
  User        :=  sLocalUser;
  Password    :=  sLocalPwd;
end;

procedure TFrmAtualizacao.Barra(iPosicao: Integer);
begin
  pbBarra.Position := iPosicao;
  Update;
end;

function TFrmAtualizacao.CopiaWebSiteParaSigac: Boolean;
Var
  iTotalRec : Integer;
  sSql      : string;
begin
  Result := True;
  iTotalRec := 0;
  Log('In�cio da opera��o');

  AtivaConexao;

  // Verifica conex�o � base de dados do web site
  try
    Log('Conex�o � base de dados do web site');
    MensUsuario('Conectando � base de dados do web site... aguarde.');
    fdm.conectnet.Connect;
  except
    Application.MessageBox('N�o foi poss�vel conectar ao banco de dados do site, verifique se a internet est� OK.',
                           'Aten��o', 0 + MB_ICONWARNING);
    Result := False;
    ativanet('','','','');
    MensUsuario('Operacao cancelada por erro');
    Log('Erro na conex�o - opera��o cancelada');
    Exit;
  end;

  // Carrega dados dos clientes
  Try
    MensUsuario('Abrindo dados do cliente do web site.');
    Log('Carregando dados dos clientes do web site');

    fdm.cdsWeb.open;
  Except
    Application.MessageBox('Erro na consulta a base de dados do web site.',
                           'Aten��o', 0 + MB_ICONWARNING);
    Result := False;
    ativanet('','','','');
    MensUsuario('Operacao cancelada por erro');
    Log('Erro na consulta � base do web site - opera��o cancelada');
    Exit;
  end;

  // Elimina dados j� existentes no SIGAC
  MensUsuario('Procurando por novos clientes na base web');
  Log('Procurando por novos clientes na base web');

  fdm.cdsweb.first;
  while not fdm.cdsWeb.eof do
  begin
    selecione('select count(*) as total from tbcliente si WHERE si.transportadora = '+
                      QuotedStr(fdm.cdsWeb.FieldByName('usuario').AsString));

    if sqlpub.FieldByName('total').AsInteger = 1 then
      fdm.cdsWeb.Delete
    else
    begin
      Inc(iTotalRec);
      fdm.cdsWeb.Next;
    end;
  end;

  MensUsuario('Total de registros apurados para esta opera��o: '+IntToStr(iTotalRec));
  Log('Total de registros para serem atualizados: '+IntToStr(iTotalRec));

  if not msg('Confirma a inser��o de '+IntToStr(iTotalRec)+' novos clientes no SIGAC ?',2) then
  begin
    MensUsuario('Opera��o cancelada por iniciativa do operador');
    Log('Opera��o cancelada por iniciativa do operador');
    Result := False;
    Exit;
  end;

  pbBarra.Max := iTotalRec;

  fdm.cdsWeb.First;

  while not fdm.cdsWeb.Eof do
  begin
    try
      selecione(MontaInsertLocal);
    except
      on E: Exception do
      begin
        Log('Erro ao atualizar usu�rio '+fdm.cdsWeb.FieldByName('usuario').AsString+' - '+E.Message);
        Result := False;
      end;
    end;
    Barra(fdm.cdsWeb.RecNo);
    fdm.cdsWeb.Next;
  end;
  MensUsuario('Fim do processo de copiar novos clientes do web site para o SIGAC');
  Log('Fim do processo de copiar novos clientes do web site para o SIGAC');
end;

function TFrmAtualizacao.CopiaSigacParaWebSite: Boolean;
Var
  iTotalRec : Integer;
  sSql      : string;
begin
  Result := True;
  iTotalRec := 0;
  Log('In�cio da opera��o');

  AtivaConexaoLocal;

  // Verifica conex�o � base de dados do SIGAC
  try
    Log('Conex�o � base de dados do SIGAC');
    MensUsuario('Conectando � base de dados do SIGAC... aguarde.');
    fdm.conector.Connect;
  except
    Application.MessageBox('N�o foi poss�vel conectar ao banco de dados do SIGAC.',
                           'Aten��o', 0 + MB_ICONWARNING);
    Result := False;
    MensUsuario('Operacao cancelada por erro');
    Log('Erro na conex�o - opera��o cancelada');
    Exit;
  end;

  // Carrega dados dos clientes
  Try
    MensUsuario('Abrindo dados do cliente do SIGAC.');
    Log('Carregando dados dos clientes do SIGAC');

    fdm.cdsLocal.open;
  Except
    Application.MessageBox('Erro na consulta a base de dados do SIGAC.',
                           'Aten��o', 0 + MB_ICONWARNING);
    Result := False;
    ativanet('','','','');
    MensUsuario('Operacao cancelada por erro');
    Log('Erro na consulta � base do SIGAC - opera��o cancelada');
    Exit;
  end;

  // Elimina dados j� existentes no SIGAC
  MensUsuario('Procurando por novos clientes no SIGAC');
  Log('Procurando por novos clientes no SIGAC');

  fdm.cdsLocal.first;
  while not fdm.cdsLocal.eof do
  begin
    selecione('select count(*) as total from tab_clientes WHERE usuario = '+
                      QuotedStr(fdm.cdsLocal.FieldByName('transportadora').AsString));

    if sqlpub.FieldByName('total').AsInteger = 1 then
      fdm.cdsLocal.Delete
    else
    begin
      Inc(iTotalRec);
      fdm.cdsLocal.Next;
    end;
  end;

  MensUsuario('Total de registros apurados para esta opera��o: '+IntToStr(iTotalRec));
  Log('Total de registros para serem atualizados: '+IntToStr(iTotalRec));

  if not msg('Confirma a inser��o de '+IntToStr(iTotalRec)+' novos clientes no WEB SITE ?',2) then
  begin
    MensUsuario('Opera��o cancelada por iniciativa do operador');
    Log('Opera��o cancelada por iniciativa do operador');
    Result := False;
    Exit;
  end;

  pbBarra.Max := iTotalRec;

  fdm.cdsLocal.First;

  while not fdm.cdsLocal.Eof do
  begin
    try
      selecione(MontaInsertWeb);
    except
      on E: Exception do
      begin
        Log('Erro ao atualizar usu�rio '+fdm.cdsLocal.FieldByName('transportadora').AsString+' - '+E.Message);
        Result := False;
      end;
    end;
    Barra(fdm.cdsLocal.RecNo);
    fdm.cdsLocal.Next;
  end;
  MensUsuario('Fim do processo de copiar novos clientes do SIGAC para o WEB SITE');
  Log('Fim do processo de copiar novos clientes do SIGAC para o WEB SITE');
end;

procedure TFrmAtualizacao.FormCreate(Sender: TObject);
begin
  // Limpar dados para apresenta��o inicial
  rgTipoAtua.ItemIndex := -1;
  txtMsg.Caption       := '';
  mmoLog.Lines.Text    := '';
end;

procedure TFrmAtualizacao.Log(sMensagem: String);
var
  sHora : string;
begin
  sHora := FormatDateTime('hh:mm:ss - ', Now);
  mmoLog.Lines.Add(sHora+sMensagem);
end;

procedure TFrmAtualizacao.MensUsuario(sMensagem: String);
begin
  txtMsg.Caption    := sMensagem;
  Update;
end;

function TFrmAtualizacao.MontaInsertLocal : string;
var
  sSql,
  sTermo : string;

  function FormataData(data:TDateTime):string;
  begin
    Result := QuotedStr(Formatdatetime('yyyy-mm-dd',data));
  end;
begin
  sTermo := 'INSERT INTO TBCLIENTE('+
            'transportadora, '+
            'filial, '+
            'np, '+
            'pontos, '+
            'fisjur, '+
            'nome, '+
            'codigogp, '+
            'gp, '+
            'cnpj, '+
            'ie, '+
            'nascimento, '+
            'data, '+
            'dtvenda, '+
            'statu, '+
            'CRO, '+
            'nomecurto, '+
            'endereco, '+
            'complemento, '+
            'bairro, '+
            'municipio, '+
            'uf, '+
            'cep, '+
            'fone, '+
            'fone2, '+
            'fone3, '+
            'email, '+
            'vendedor, '+
            'vinculo, '+
            'codigo, '+
            'titular, '+
            'cnpjconta, '+
            'tpconta, '+
            'nbanco, '+
            'banco, '+
            'agencia, '+
            'conta, '+
            'tipocliente '+
            ') VALUES (';

  sSql := sTermo;

  with fdm.cdsWeb do
  begin
    sSql := sSql + QuotedStr(FieldByName('usuario').AsString)+',';         // transportadora
    sSql := sSql + QuotedStr(FieldByName('senha').AsString)+',';         // filial
    sSql := sSql + QuotedStr('I')+',';                                   // np
    sSql := sSql + '1'+',';                                              // pontos
    sSql := sSql + QuotedStr(FieldByName('tipo').AsString)+',';          // fisjur
    sSql := sSql + QuotedStr(FieldByName('nome').AsString)+',';          // nome
    sSql := sSql + QuotedStr(FieldByName('codigogrupo').AsString)+',';   // codigogp
    sSql := sSql + QuotedStr(FieldByName('descricao').AsString)+',';     // gp
    sSql := sSql + QuotedStr(FieldByName('cpf').AsString)+',';           // cnpj
    sSql := sSql + QuotedStr(FieldByName('rg').AsString)+',';            // ie
    sSql := sSql + FormataData(FieldByName('nascimento').AsDateTime)+',';// nascimento
    sSql := sSql + FormataData(FieldByName('data').AsDateTime)+',';      // data
    sSql := sSql + FormataData(FieldByName('datavenda').AsDateTime)+','; // dtvenda
    sSql := sSql + QuotedStr(FieldByName('crea').AsString)+',';          // statu
    sSql := sSql + QuotedStr(FieldByName('numero_crea').AsString)+',';   // CRO
    sSql := sSql + QuotedStr(FieldByName('razao').AsString)+',';         // nomecurto
    sSql := sSql + QuotedStr(FieldByName('endereco').AsString)+',';      // endereco
    sSql := sSql + QuotedStr(FieldByName('complemento').AsString)+',';   // complemento
    sSql := sSql + QuotedStr(FieldByName('bairro').AsString)+',';        // bairro
    sSql := sSql + QuotedStr(FieldByName('cidade').AsString)+',';        // municipio
    sSql := sSql + QuotedStr(FieldByName('estado').AsString)+',';        // uf
    sSql := sSql + QuotedStr(FieldByName('cep').AsString)+',';           // cep
    sSql := sSql + QuotedStr(FieldByName('telefone1').AsString)+',';     // fone
    sSql := sSql + QuotedStr(FieldByName('telefone2').AsString)+',';     // fone2
    sSql := sSql + QuotedStr(FieldByName('celular').AsString)+',';       // fone3
    sSql := sSql + QuotedStr(FieldByName('email').AsString)+',';         // email
    sSql := sSql + 'SITE' + ',';                                         // vendedor
    sSql := sSql + QuotedStr(FieldByName('tipo_user').AsString)+',';     // vinculo
    sSql := sSql + QuotedStr(FieldByName('cod_user').AsString)+',';      // codigo
    sSql := sSql + QuotedStr(FieldByName('titular').AsString)+',';       // titular
    sSql := sSql + QuotedStr(FieldByName('cpfcnpj_conta').AsString)+','; // cnpjconta
    sSql := sSql + QuotedStr(FieldByName('tipo_conta').AsString)+',';    // tpconta
    sSql := sSql + QuotedStr(FieldByName('numero_banco').AsString)+',';  // nbanco
    sSql := sSql + QuotedStr(FieldByName('nome').AsString)+',';          // banco
    sSql := sSql + QuotedStr(FieldByName('agencia').AsString)+',';       // agencia
    sSql := sSql + QuotedStr(FieldByName('conta').AsString)+',';         // conta
    sSql := sSql + QuotedStr(FieldByName('profissao').AsString)+')';     // tipocliente
  end;

  Result := sSql;
end;

procedure TFrmAtualizacao.rgTipoAtuaClick(Sender: TObject);
begin
  case rgTipoAtua.ItemIndex of
    0 : begin    // Copiar novos clientes do web site para o SIGAC
          if msg('Deseja iniciar a opera��o de c�pia de novos clientes para o SIGAC ?',2) then
          begin
            if CopiaWebSiteParaSigac then
              ShowMessage('Opera��o finalizada. Observe o log da opera��o!')
            else
              ShowMessage('Opera��o finalizada com erros. Observe o log da opera��o e salve os dados!');
          end;
        end;
    1 : begin    // Copiar novos clientes do SIGAC para o web site
          if msg('Deseja iniciar a opera��o de c�pia de novos clientes para o WEB SITE ?',2) then
          begin
            if CopiaSigacParaWebSite then
              ShowMessage('Opera��o finalizada. Observe o log da opera��o!')
            else
              ShowMessage('Opera��o finalizada com erros. Observe o log da opera��o e salve os dados!');
          end;
        end;

  end;
end;

procedure TFrmAtualizacao.btnOkClick(Sender: TObject);
begin
  if MessageDlg('Tem certeza que quer fechar o Painel de Atualiza��es?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TFrmAtualizacao.btnSalvarLogClick(Sender: TObject);
var
  sNomeArq : string;
begin
  if dlgSave1.Execute then
  begin
    sNomeArq := dlgSave1.FileName;
    mmoLog.Lines.SaveToFile(sNomeArq);
  end;
end;

end.

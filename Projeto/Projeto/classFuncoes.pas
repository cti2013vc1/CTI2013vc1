unit classFuncoes;

interface
uses
  VCl.Forms, Vcl.ExtCtrls, Vcl.StdCtrls, DBCtrls, ComCtrls, SysUtils;

  procedure LimparCampos(Form : TForm);

implementation

procedure LimparCampos(Form : TForm);
var
  i: Integer;
  begin

    for i := 0 to Form.ComponentCount -1 do
    begin

      if Form.Components[i] is TLabeledEdit then
      begin
        (Form.Components[i] as TLabeledEdit).Clear;
      end
      else
      if Form.Components[i] is TEdit then
      begin
         (Form.Components[i] as TEdit).Clear;
      end
      else if Form.Components[i] is TRadioButton then
      begin

        (Form.Components[i] as TRadioButton).Checked := False;

      end else if Form.Components[i] is TDBLookupComboBox then
        begin
         //   (Form.Components[i] as TDBLookupComboBox).DataSource.DataSet.Close;
         //   (Form.Components[i] as TDBLookupComboBox).DataSource.DataSet.Open;
        end else if (Form.Components[i] is TDateTimePicker) then
        begin

           (Form.Components[i] as TDateTimePicker).Date := Now();

        end;



    end;


  end;






end.

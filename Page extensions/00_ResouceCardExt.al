pageextension 123456700 "CSD ResourceCardExt" extends "Resource Card"

{
    layout
    {
        addlast (General)
        {
            field("CSD resource Type";"CSD resource Type")
            {

            }
            field("CSD Quantity Per Day";"CSD Quantity Per Day")
            {

            }

        }
        addafter("Personal Data")
        {
            group("CSD Room")
            {
                Caption='Room';
                Visible = ShowMaxField;
                 field("CSD Maximimum Participants";"CSD Maximum Participants")
                {

                }
            }
        }
    }
    
        trigger OnAfterGetRecord();
    
        begin
            ShowMaxField := (Type = Type::Machine);
            CurrPage.Update(False);            
        end;
    
    var
     [InDataSet] 
     ShowMaxField:Boolean;


}
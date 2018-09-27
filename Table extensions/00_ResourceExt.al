tableextension 123456700  "CSD ResourceExt" extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate();
            begin
                rec.testfield("Unit Cost");
            end;
        }
        field(123456701;"CSD resource Type";Option)
        {
            OptionMembers="Internal","External";
            OptionCaption='Internal,External';
        }
        field(123456702;"CSD Maximum Participants";Integer)
        {
            Caption='Maximum Participants';
        }
        field(123456703;"CSD Quantity Per Day";Decimal)
        {
            Caption='Quantity Per Day';
        }
    }
}
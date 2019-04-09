using Microsoft.EntityFrameworkCore.Migrations;

namespace BookStoreProj.Migrations
{
    public partial class articleType : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "Article",
                table: "Book",
                maxLength: 6,
                nullable: false,
                oldClrType: typeof(int),
                oldMaxLength: 6);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "Article",
                table: "Book",
                maxLength: 6,
                nullable: false,
                oldClrType: typeof(string),
                oldMaxLength: 6);
        }
    }
}

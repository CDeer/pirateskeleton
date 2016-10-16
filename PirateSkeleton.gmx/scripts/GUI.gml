draw_text( 32, 736, HeroManObjCombat.healthPoint);
draw_text( 50, 736, "/");
draw_text( 56, 736, HeroManObjCombat.healthPointMax);
draw_text( 50, 32, "/");
draw_text( 56, 32, UnfairBossCharacter.healthPointMax);
draw_text( 56, 128, i);
if(ds_exists(playerSelection, ds_type_list) && ds_list_size(playerSelection) > 0)
{
    draw_sprite(Selector, 0, playerSelection[| pos1].x, playerSelection[| pos1].y *2)
    draw_text( 32, 32, fieldJobbersList[| pos1].healthPoint);
}

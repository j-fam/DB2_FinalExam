CREATE OR REPLACE PROCEDURE order_total_fix (lowerbasket number, upperbasket number) is
     p_bsktid NUMBER;
     p_cnt  NUMBER;
     p_sub  NUMBER;
     p_ship  NUMBER;
     p_total  NUMBER;
     PV_OVERALL_TOTAL NUMBER := 0; 
     flag number := 0;
     bottom number;
     top number;
    cursor getitem is 
    select idbasket, sum(quantity), sum(quantity*price), SUM(SHIPPING_COST)
    from basketitem
    where idbasket >= lowerbasket and idbasket <= upperbasket
    group by idbasket;     
    BEGIN
     open getitem;
     loop
     fetch getitem into p_bsktid, p_cnt, p_sub, P_SHIP;
     exit when getitem%notfound;
     flag := flag + 1; 
     P_SHIP := NVL(P_SHIP,0);
     p_total := NVL(p_sub,0) + NVL(p_ship,0);
     pv_overall_total := p_total + pv_overall_total;
     insert into procedure_results values (p_bsktid, p_cnt, p_sub, p_ship, p_total);
     end loop;
   END order_total_fix;
/
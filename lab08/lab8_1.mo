model lab8_1
parameter Real p_cr = 40 "критическая стоимость продукта";
parameter Real N =43 "число потребителей производимого продукта";
parameter Real q = 1  "максимальная потребность одного человека в продукте в единицу времени";
parameter Real t1 = 20 "длительность производственного цикла";
parameter Real t2 = 14 "длительность производственного цикла";
parameter Real p1 = 10.7 "себестоимость продукта 1";
parameter Real p2 = 19.1 "себестоимость продукта 2";
parameter Real a1 = p_cr / (t1 * t1 * p1 * p1 * N * q);
parameter Real a2 = p_cr / (t2 * t2 * p2 * p2 * N * q);
parameter Real b = p_cr / (t1 * t1 * p1 * p1 * t2 * t2 * p2 * p2 * N * q);
parameter Real c1 = (p_cr - p1) / (t1 * p1);
parameter Real c2 = (p_cr - p2) / (t2 * p2);
Real M1(start = 2.6) "оборотные средства предприятия 1";
Real M2(start = 6.2) "оборотные средства предприятия 2";
Real tetha1, tetha2 "безразмерное время";
equation
der(M1) = M1 - ((b / c1) * M1 * M2) - ((a1 / c1) * M1 * M1);
der(M2) = ((c2 / c1) * M2) - ((b / c1) * M1 * M2) - ((a2 / c1) * M2 * M2);
der(tetha1) = 1 / c1;
der(tetha2) = 1 / c1;
end lab8_1;

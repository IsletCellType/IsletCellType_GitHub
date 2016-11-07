clear all
close all
clc

cd('C:\GitHub_IsletCellType\Example_Data')

path(path,'C:\GitHub_IsletCellType\Matlab_Functions')

Matrix=xlsread('Example_Data.xlsx'); % reads ExampleData into Matrix

CellType=Matrix(:,1); % 1=alpha; 2=beta; 3=delta
TailCurrent=Matrix(:,3);
ACurrent=Matrix(:,2);
ILeak=Matrix(:,4);
CCell=Matrix(:,5);
V2h=Matrix(:,7);
kh=Matrix(:,8);
RAccess=Matrix(:,6);
Imax=Matrix(:,9);

for i=1:200
[Probability_abd,CellTypeNumber] = IsletCellType(RAccess(i),ILeak(i),Imax(i),V2h(i),ACurrent(i),TailCurrent(i),CCell(i),kh(i));
Probability(i,:)=Probability_abd;
PredictedCellType(i)=CellTypeNumber;
end

Matrix(:,13)=PredictedCellType;

Matrix(:,14)=eq(PredictedCellType',CellType)

Matrix=xlswrite('Example_Data_Analysed.xlsx',Matrix); % writes Matrix to ExampleData_Analysed
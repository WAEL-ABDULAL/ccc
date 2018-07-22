function minmin() 
    	Ino=4;Gno=20;
W= [106, 123,110,123,130 ,116, 110,130,117,147,132 ,129, 100, 139,117,101,136,105,138, 135];
  cp=[5, 2,7, 7];
  % public static double [] min1(double ET[][],int Gno,int Ino){
       C2=zeros(1,Ino);
       
       gorev=zeros(1,Gno);
       HT=zeros(1,Ino);
       ET=zeros(Gno,Ino);
   for i=1:Gno
   for j=1:Ino
   ET(i,j)= W(i)/cp(j);
   end 
   end
   
for  qq=1:Gno     
for  j=1:Ino
HT(j)=C2(j);%yardimci dizi
end
 min = Inf;
 minIndex = zeros(1,2);
for i=1:Gno-qq+1  
for  j=1:Ino
   
HT(j)=HT(j)+ ET(i,j);%ceil((Gno-qq)*rand()+1)
if HT(j) < min
min = HT(j);
minIndex(1) = i;%gorev
minIndex(2) = j;
end
end 
end
for j=1:Ino
if j==minIndex(2)  
C2(j)=C2(j)+ET(minIndex(1),j);
HT(j)=C2(j);
break;	end;end
if Gno==qq
           break;
end
%/////////////////Delete row ////////////////////////////
  rowToRemove=   minIndex(1);
       matrixCopy=zeros(Gno-qq,Ino);
      
        p = 1;
    for i = 2: Gno-qq+1      
        q = 1;      
	for j = 1: Ino               
     if i == rowToRemove
                    continue;     
                  else
                      matrixCopy(p,q) = ET(i,j);               
     end
       q=q+1;
    end
     p=p+1;
    end
             clear ET;
             ET=zeros(Gno-qq,Ino);
             %%====== print yani ET
  for i = 1: Gno-qq                 
  for j = 1: Ino        
  %matrixCopy;
  ET (i,j)=  matrixCopy(i,j); 
  end
  end
 %disp(C2); %return C2; 
 
end
ET;
disp(C2); 
end
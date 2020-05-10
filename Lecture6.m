%% Differences between Cell and String %%
s='hello'
whos 's'
str_ascii=uint8(s);
str_back_to_ascii=char(str_ascii);
%%
student_profile_bracket= ['Max Power  ';...
                         '3rd Semester';...
                         'EP        ']


student_profile_char=char('Max Power', '3rd Semester','EP')


whos stud*%%gives information about all the stuff from staring with stud%5
%%
name='Max Power'
Semester= '3rd Semester'
study='EP'
s_profile=[name,',',Semester ,',',study];
s_profile =strcat(name ,',',Semester ,',',study)%%strcat makes it together 
s_profile=char(name,semester,study);
s_profile = cellstr(s_profile);
disp(s_profile)
s_profile(1)%it gives first element as matrix and so on
s_profile(2)
s_profile_cell(1)%%Its Max Power
s_profile_cell(2)%%'3rd Semestmer'
whos s_profile
whos s_profile_cell
s_profile_char=char(s_profile)
s_profile_char(1)%%gives the first character
s_profile_char(1,1:end)
s_profile_char(1:2,1:5)
S=char('A','rolloing','stone','gathers','momentum.')
C={'A';'rolloing';'stone';'gathers';'momentum.'}
%% structure
exam(1).name= 'Tom Thomson';
exam(1).score= 83;
exam(1).grade=1.7;
exam(2).name ='Mary Miller';
exam(2).grade =1.3;
exam(2).score=91;
exam(3)=struct('name','jack Johnson','score',70,...
                'grade',2.7);
scores=[exam.score];
avg_score= mean(scores)
avg_score=mean([exam.score])
 names=char(exam.name)
 names={exam.name}
 names
 [N1 ,N2,N3]=exam.name
 load('student.mat', 'student');
 student(1).grades;
 figure
 for k=1:length(student)
     plot(student(k).grades);
     hold on
 end
 hold off
 legend(char(student.name))
 xlabel('Exam Number')
 ylabel('Score /%')
 title('Overview of Student Grades')
 
 
 
     %%
     MN=1%matriculation Nummer
     f_print_student_grades(student,(MN))
     
     
     _%%
 function f_print_student_grades(student,MN)%% my compuer got problem with saving functions soo..

figure 
yyaxix left
bar(student(MN).grades)
ylabel('Score / %')
yyaxix right
nog=length(student(MN).grades)
average=ones(1,nog)*students(MN).avg
plot(1:nog,average,'--','LineWidth',2,'color','red')
xlabel('Exam Number')
t=title([student(MN).name,...
         '/ Average Grade:',...
         num2str(student(MN).avg)])
     if student(MN).avg<50
         t.color='magenta'
     end
 end

 
 %%
 x=0:0.5:10
 y=2*x;
 figure,plot(x,y,'ro')
 xlabel('\textit{x}/a.u.','Interpreter','latex')
 ylabel('\textit{y}/a.u.','Interpreter','latex')
 y=awgn(y,1)
 hold on 
 plot(x,y ,'b+')
 
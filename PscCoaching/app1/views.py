import datetime
from django.shortcuts import render,redirect,HttpResponse
from app1.models import course, exam, exam_registration, fee_payment, question, question_bank, result, review, student_admission,tbl_idgen,staff,student,login,event
from django.core.files.storage import FileSystemStorage


def sample(request):
    return render(request,"sample.html")
def index(request):
    data=review.objects.all()
    data1=course.objects.all()
    return render(request,"index.html",{'data':data,'data1':data1})
def form(request):
    return render(request,"form.html")
def loginpage(request):
    return render(request,"login_page.html")
def adminmenubar(request):
    return render(request,"admin_menubar.html")
def addcourse(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data1 = tbl_idgen.objects.get(id=1)
        id = data1.courseid
        id = int(id+1)
        courseid = "CO_00" + str(id)
        request.session["courseid"] = id
        return render(request,"add_course.html",{'courseid':courseid})
def addingcourse(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        if request.method=='POST':
            data=course()
            data.course_id=request.POST.get('id')
            data.course_name=request.POST.get('name')
            data.fee=request.POST.get('fee')
            data.description=request.POST.get('desc')
            data.save()

            data1=tbl_idgen.objects.get(id=1)
            data1.courseid=request.session["courseid"]
            data1.save()
            return render(request,"admin_index.html")
def table(request):
    return render(request,"table.html")
def coursetbl(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=course.objects.all()
        return render(request,"table_course.html",{'data1':data})
def removecourse(request,p1):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=course.objects.get(course_id=p1)
        data.delete()
        return redirect('/coursetbl')
def updatecourse(request,p1):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=course.objects.get(course_id=p1)
        return render(request,"update_course.html",{'data1':data})
def updatedcourse(request,p1):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=course.objects.get(course_id=p1)
        data.course_id=request.POST.get('id')
        data.course_name=request.POST.get('name')
        data.fee=request.POST.get('fee')
        data.description=request.POST.get('desc')
        data.save()
        return redirect('/coursetbl')
def staffappoint(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data1 = tbl_idgen.objects.get(id=1)
        id = data1.staffid
        id = int(id+1)
        staffid = "ST_00" + str(id)
        request.session["staffid"] = id
        return render(request,"appoint_staff.html",{'staffid':staffid})
def staffappointing(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=staff()
        data.staff_id=request.POST.get('id')
        data.staff_name=request.POST.get('name')
        now = datetime.datetime.now()
        time1 = now.strftime("%Y-%m-%d")
        data.doj=time1
        data.house_name=request.POST.get('hname')
        data.street=request.POST.get('street')
        data.district=request.POST.get('district')
        data.phone=request.POST.get('phone')
        data.email=request.POST.get('email')
        data.dob=request.POST.get('dob')
        data.qualification=request.POST.get('qual')
        data.experience=request.POST.get('exp')
        data.status="Appointed"
        data.save()

        data2=login()
        data2.username=request.POST.get('id')
        data2.password=request.POST.get('phone')
        data2.category="Staff"
        data2.save()

        data1=tbl_idgen.objects.get(id=1)
        data1.staffid=request.session["staffid"]
        data1.save()
        return redirect('/staffappoint')
def stafftbl(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=staff.objects.all()
        return render(request,"table_staff.html",{'data1':data})
def updatestaff(request,p1):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=staff.objects.get(staff_id=p1)
        return render(request,"update_staff.html",{'data1':data})
def updatedstaff(request,p1):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=staff.objects.get(staff_id=p1)
        data.staff_id=request.POST.get('id')
        data.staff_name=request.POST.get('name')
        data.doj=request.POST.get('doj')
        data.house_name=request.POST.get('hname')
        data.street=request.POST.get('street')
        data.district=request.POST.get('district')
        data.phone=request.POST.get('phone')
        data.email=request.POST.get('email')
        data.dob=request.POST.get('dob')
        data.qualification=request.POST.get('qual')
        data.experience=request.POST.get('exp')
        data.status=request.POST.get('status')
        data.save()

        data2=login.objects.get(username=p1)
        data2.username=request.POST.get('id')
        data2.password=request.POST.get('phone')
        data2.category="Staff"
        data2.save()
        return redirect('/stafftbl')
def removestaff(request,p1):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=staff.objects.get(staff_id=p1)
        data.delete()

        data2=login.objects.get(username=p1)
        data2.delete()
        return redirect('/stafftbl')
def staffmenubar(request):
    return render(request,'staff_menubar.html')
def registerstudent(request):
    data1 = tbl_idgen.objects.get(id=1)
    id = data1.studid
    id = int(id+1)
    studid = "STUD_00" + str(id)
    request.session["studid"] = id
    d=course.objects.all()
    return render(request,'student_application.html',{'studid':studid,'data':d})
def registeredstudent(request):
    data=student()
    data.student_appli_id=request.POST.get('id')
    data.student_name=request.POST.get('name')
    data.course_id_id=request.POST.get('course')
    now = datetime.datetime.now()
    time1 = now.strftime("%Y-%m-%d")
    data.admission_date=time1
    data.house_name=request.POST.get('honame')
    data.street=request.POST.get('street')
    data.district=request.POST.get('district')
    data.dob=request.POST.get('dob')
    data.phone=request.POST.get('phone')
    data.email=request.POST.get('email')
    data.qualification=request.POST.get('qual')
    data.status="Pending"
    data.save()

    data1=tbl_idgen.objects.get(id=1)
    data1.studid=request.session["studid"]
    data1.save()
    return render(request,"index.html")
def viewapplication(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=student.objects.filter(status='Pending')
        return render(request,'table_viewapplication.html',{'data1':data})
def admission(request,p1):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=student.objects.get(student_appli_id=p1)
        data.status="Processed"
        data.save()

        data1=student_admission()
        data1.student_id=data.student_appli_id
        data1.student_name=data.student_name
        data1.course_id=data.course_id
        data1.admission_date=data.admission_date
        data1.house_name=data.house_name
        data1.street=data.street
        data1.district=data.district
        data1.dob=data.dob
        data1.phone=data.phone
        data1.email=data.email
        data1.qualification=data.qualification
        data1.save()
        
        data2=login()
        data2.username=data.student_appli_id
        data2.password=data.phone
        data2.category="Student"
        data2.save()

        return redirect('/viewapplication')
def studenttbl(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=student_admission.objects.all()
        return render(request,"table_student.html",{'data1':data})
def logins(request):
    if request.method == 'POST':
        dataa=login.objects.all()
        un=request.POST.get('username')
        pwd=request.POST.get('password')
        
        flag=0
            
        for da in dataa:
            if un == da.username and pwd == da.password:
                type=da.category
                # request.session['uid']=un
                flag = 1
                if type=="Admin":
                    request.session['aid']=un
                    return redirect('/adminindex')   
                elif type=="Staff":
                    request.session['staid']=un
                    return redirect('/staffindex')  
                elif type=="Student":
                    request.session['suid']=un
                    return redirect('/studentindex')  
                
                else:
                    return HttpResponse("Invalid account type")
        if flag==0:
            return HttpResponse("Invalid user")
def logoutadmin(request):
    del request.session['aid']
    return render(request,'index.html')
def logoutstudent(request):
    del request.session['suid']
    return render(request,'index.html')
def logoutstaff(request):
    del request.session['staid']
    return render(request,'index.html')
def studentmenubar(request):
    return render(request,'student_menubar.html')
def indexmenubar(request):
    return render(request,'index_menubar.html')
def addevent(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data1 = tbl_idgen.objects.get(id=1)
        id = data1.eventid
        id = int(id+1)
        eventid = "STUD_00" + str(id)
        request.session["eventid"] = id
        return render(request,'add_event.html',{'eventid':eventid})
def addingevent(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        if request.method=='POST':
            data=event()
            data.event_id=request.POST.get('id')
            data.event_name=request.POST.get('name')
            data.event_date=request.POST.get('date')
            data.description=request.POST.get('desc')
            data.status=request.POST.get('status')
            data.save()

            data1=tbl_idgen.objects.get(id=1)
            data1.eventid=request.session["eventid"]
            data1.save()
            # return render(request,"staff_menubar.html")
            return redirect('/addevent')
def viewevent(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=event.objects.all()
        return render(request,'view_event.html',{'data1':data})
def eventtbl(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=event.objects.all()
        return render(request,'table_event.html',{'data1':data})
def updateevent(request,p1):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=event.objects.get(event_id=p1)
        return render(request,'update_event.html',{'data1':data})
def removeevent(request,p1):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=event.objects.get(event_id=p1)
        data.delete()
        return redirect('/eventtbl')
def updatedevent(request,p1):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=event.objects.get(event_id=p1)
        data=event()
        data.event_id=request.POST.get('id')
        data.event_name=request.POST.get('name')
        data.event_date=request.POST.get('date')
        data.description=request.POST.get('desc')
        data.status=request.POST.get('status')
        data.save()
        return redirect('/eventtbl')
def addquestionbank(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data1 = tbl_idgen.objects.get(id=1)
        id = data1.qbankid
        id = int(id+1)
        qbankid = "QB_00" + str(id)
        request.session["qbankid"] = id
        return render(request,'add_question_bank.html',{'qbankid':qbankid})
def addingquestionbank(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        if request.method=='POST':
            data=question_bank()
            data.questionbank_id=request.POST.get('id')

            Photo = request.FILES['qst']
            fs = FileSystemStorage()
            filename = fs.save(Photo.name, Photo) 
            uploaded_file_url = fs.url(filename)
            data.question_paper=uploaded_file_url  

            Photo = request.FILES['ans']
            fs = FileSystemStorage()
            filename = fs.save(Photo.name, Photo) 
            uploaded_file_url = fs.url(filename)
            data.answer_key=uploaded_file_url      
            data.save()

            data1=tbl_idgen.objects.get(id=1)
            data1.qbankid=request.session["qbankid"]
            data1.save()
        return redirect('/addquestionbank')
def questionbanktbl(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=question_bank.objects.all()
        return render(request,'remove_question_bank.html',{'data1':data})
def removequestionbank(request,p1):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=question_bank.objects.get(questionbank_id=p1)
        data.delete()
        return redirect('/questionbanktbl')
def addexam(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data1 = tbl_idgen.objects.get(id=1)
        id = data1.examid
        id = int(id+1)
        examid = "EX_00" + str(id)
        request.session["examid"] = id
        return render(request,'add_exam.html',{'examid':examid})
def addingexam(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        if request.method=='POST':
            data=exam()
            data.exam_id=request.POST.get('id')
            data.exam_name=request.POST.get('name')
            data.eligibility=request.POST.get('eligibility')
            data.exam_type=request.POST.get('type')
            data.save()

            data1=tbl_idgen.objects.get(id=1)
            data1.examid=request.session["examid"]
            data1.save()
        return render(request,'staff_index.html')
def addquestion(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data1 = tbl_idgen.objects.get(id=1)
        id = data1.qstid
        id = int(id+1)
        qstid = "QST_00" + str(id)
        request.session["qstid"] = id
        data=exam.objects.all()
        return render(request,'add_question.html',{'qstid':qstid,'data':data})
def addingquestion(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        if request.method=='POST':
            data=question()
            data.question_id=request.POST.get('id')
            data.exam_id_id=request.POST.get('exam')
            data.question=request.POST.get('qst')
            data.option1=request.POST.get('opt1')
            data.option2=request.POST.get('opt2')
            data.option3=request.POST.get('opt3')
            data.option4=request.POST.get('opt4')
            data.answer=request.POST.get('ans')
            data.status="Not Attended"
            data.save()

            data1=tbl_idgen.objects.get(id=1)
            data1.qstid=request.session["qstid"]
            data1.save()
        return redirect('/addquestion')
def questiontbl(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=question.objects.all()
        return render(request,'table_question.html',{'data1':data})
def removequestion(request,p1):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=question.objects.get(question_id=p1)
        data.delete()
        return redirect('/questiontbl')
def sam(request):
    data=event.objects.all()
    return render(request,'sample1.html',{'data1':data})
def viewquestionbank(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=question_bank.objects.all()
        return render(request,'view_question_bank.html',{'data1':data})
def viewexam(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=exam.objects.all()
        return render(request,'view_exam.html',{'data1':data})
def registerexam(request,p1):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data1 = tbl_idgen.objects.get(id=1)
        id = data1.studexamid
        id = int(id+1)
        studexamid = "SE_00" + str(id)
        request.session["studexamid"] = id
        s=request.session['suid']
        data=student_admission.objects.get(student_id=s)
        data2=exam.objects.get(exam_id=p1)
        request.session['eid']=p1
        return render(request,'exam_registration.html',{'studexamid':studexamid,'data':data,'data2':data2})
def registeringexam(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        if request.method=='POST':
            data=exam_registration()
            data.student_exam_id=request.POST.get('id')
            data.student_id_id=request.session['suid']
            data.exam_id_id=request.session['eid']
            data.status="Not Attended"
            data.save()

            data1=tbl_idgen.objects.get(id=1)
            data1.studexamid=request.session["studexamid"]
            data1.save()
        return render(request,'student_index.html')
def viewexamregistration(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=exam_registration.objects.all()
        return render(request,'view_exam_registration.html',{'data1':data})
def mockexamselection(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=exam_registration.objects.filter(student_id=request.session['suid']).filter(status="Not Attended")
        return render(request,'mock_exam_selection.html',{'data1':data})
def mockexamselected(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=exam_registration.objects.get(student_exam_id=request.POST.get('mockexam'))
        data.status="Attended"
        data.save()
        data1=question.objects.filter(exam_id_id=data.exam_id_id).filter(status="Not Attended")
        return render(request,'mock_exam.html',{'data1':data1})
def mockexam(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        return render(request,'mock_exam.html')
def option1(request,opid,qid,eid):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data = question.objects.get(question_id=qid)
        if data.answer==opid:
        
            if 'resultid' not in request.session:
                data1 = tbl_idgen.objects.get(id=1)
                id = data1.resultid
                id = int(id+1)
                resultid = "RESULT_00" + str(id)
                request.session['resultid'] = resultid
                data2=result()
                data2.result_id=resultid
                data2.exam_id_id=eid
                data2.student_id_id=request.session['suid']
                data2.result=1
                data2.status="active"
                now = datetime.datetime.now()
                time1 = now.strftime("%Y-%m-%d")
                data2.date=time1
                data2.save()
            else:
                result_id=request.session['resultid']   
                data2=result.objects.get(result_id=result_id)
                data2.result=int(data2.result)+1
                data2.status="active"
                data2.save() 
        
        data.status="Attended"
        data.save()
        

        data3 = question.objects.filter(exam_id_id=eid).filter(status="Not Attended")
        return render(request,"mock_exam.html",{'data1':data3})
def option2(request,opid,qid,eid):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data = question.objects.get(question_id=qid)
        if data.answer==opid:
        
            if 'resultid' not in request.session:
                data1 = tbl_idgen.objects.get(id=1)
                id = data1.resultid
                id = int(id+1)
                resultid = "RESULT_00" + str(id)
                request.session['resultid'] = resultid
                data2=result()
                data2.result_id=resultid
                data2.exam_id_id=eid
                data2.student_id_id=request.session['suid']
                data2.result=1
                data2.status="active"
                now = datetime.datetime.now()
                time1 = now.strftime("%Y-%m-%d")
                data2.date=time1
                data2.save()
            else:
                result_id=request.session['resultid']   
                data2=result.objects.get(result_id=result_id)
                data2.result=int(data2.result)+1
                data2.status="active"
                data2.save() 
        
        data.status="Attended"
        data.save()
        

        data3 = question.objects.filter(exam_id_id=eid).filter(status="Not Attended")
        return render(request,"mock_exam.html",{'data1':data3})
def option3(request,opid,qid,eid):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data = question.objects.get(question_id=qid)
        if data.answer==opid:
        
            if 'resultid' not in request.session:
                data1 = tbl_idgen.objects.get(id=1)
                id = data1.resultid
                id = int(id+1)
                resultid = "RESULT_00" + str(id)
                request.session['resultid'] = resultid
                data2=result()
                data2.result_id=resultid
                data2.exam_id_id=eid
                data2.student_id_id=request.session['suid']
                data2.result=1
                data2.status="active"
                now = datetime.datetime.now()
                time1 = now.strftime("%Y-%m-%d")
                data2.date=time1
                data2.save()
            else:
                result_id=request.session['resultid']   
                data2=result.objects.get(result_id=result_id)
                data2.result=int(data2.result)+1
                data2.status="active"
                data2.save() 
        
        data.status="Attended"
        data.save()
        

        data3 = question.objects.filter(exam_id_id=eid).filter(status="Not Attended")
        return render(request,"mock_exam.html",{'data1':data3})
def option4(request,opid,qid,eid):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data = question.objects.get(question_id=qid)
        if data.answer==opid:
        
            if 'resultid' not in request.session:
                data1 = tbl_idgen.objects.get(id=1)
                id = data1.resultid
                id = int(id+1)
                resultid = "RESULT_00" + str(id)
                request.session['resultid'] = resultid
                data2=result()
                data2.result_id=resultid
                data2.exam_id_id=eid
                data2.student_id_id=request.session['suid']
                data2.result=1
                data2.status="active"
                now = datetime.datetime.now()
                time1 = now.strftime("%Y-%m-%d")
                data2.date=time1
                data2.save()
            else:
                result_id=request.session['resultid']   
                data2=result.objects.get(result_id=result_id)
                data2.result=int(data2.result)+1
                data2.status="active"
                data2.save() 
        
        data.status="Attended"
        data.save()
        

        data3 = question.objects.filter(exam_id_id=eid).filter(status="Not Attended")
        return render(request,"mock_exam.html",{'data1':data3})
def finishexam(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        if 'resultid' not in request.session:
            data=exam_registration.objects.filter(student_id=request.session['suid']).filter(status="Not Attended")
            data2=question.objects.all()
            for x in data2:
                x.status="Not Attended"
                x.save()
            return render(request,'mock_exam_selection.html',{'data1':data})
        else:

            resultid=request.session['resultid'] 
        
            data=result.objects.get(result_id=resultid)
            data.status="completed"
            data.save()
            data2=question.objects.all()
            for x in data2:
                x.status="Not Attended"
                x.save()


            data1=tbl_idgen.objects.get(id=1)
            data1.resultid=int(data1.resultid)+1
            data1.save()
            del request.session['resultid']      
            data=exam_registration.objects.filter(student_id=request.session['suid']).filter(status="Not Attended")
            return render(request,'mock_exam_selection.html',{'data1':data})
def feepayment(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data1 = tbl_idgen.objects.get(id=1)
        id = data1.feeid
        id = int(id+1)
        feeid = "FEE_00" + str(id)
        request.session["feeid"] = id
        data=course.objects.all()
        return render(request,'fee_payment.html',{'feeid':feeid,'data':data})
def feepayed(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        if request.method=='POST':
            data=fee_payment()
            data.payment_id=request.POST.get('id')
            data.student_id_id=request.session['suid']
            data.course_id_id=request.POST.get('course')
            data.fee=request.POST.get('fee')
            now = datetime.datetime.now()
            time1 = now.strftime("%Y-%m-%d")
            data.payment_date=time1
            data.bank=request.POST.get('bank')
            data.account_no=request.POST.get('acc_no')
            data.ifsc_code=request.POST.get('ifsc')
            data.status="Payed"
            data.save()

            data1=tbl_idgen.objects.get(id=1)
            data1.feeid=request.session["feeid"]
            data1.save()
        return render(request,'student_index.html')
def viewfeecollection(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=fee_payment.objects.filter(student_id_id=request.POST.get('name'))
        return render(request,'view_fee_collection.html',{'data1':data})
def addreview(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data1 = tbl_idgen.objects.get(id=1)
        id = data1.reviewid
        id = int(id+1)
        reviewid = "RE_00" + str(id)
        request.session["reviewid"] = id
        request.session["rewid"] = reviewid
        return render(request,'add_review.html')
def addingreview(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        if request.method=='POST':
            data=review()
            data.review_id=request.session["rewid"]
            data.student_id_id=request.session['suid']
            data.review=request.POST.get('review')
            now = datetime.datetime.now()
            time1 = now.strftime("%Y-%m-%d")
            data.review_date=time1
            data.save()

            data1=tbl_idgen.objects.get(id=1)
            data1.reviewid=request.session["reviewid"]
            data1.save()
        return render(request,'student_index.html')
def selectfeecollection(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=student_admission.objects.all()
        return render(request,'select_fee_collection.html',{'data1':data})
def viewresult(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=result.objects.filter(student_id_id=request.session['suid'])
        return render(request,'view_exam_result.html',{'data1':data})
def viewresultselection(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=student_admission.objects.all()
        return render(request,'view_exam_result_selection.html',{'data1':data})
def viewstudentresult(request):
    if 'staid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=result.objects.filter(student_id_id=request.POST.get('name'))
        return render(request,'view_student_result.html',{'data1':data})
def viewcourse(request):
    if 'suid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=course.objects.all()
        return render(request,'view_course.html',{'data1':data})
def viewpubliccourse(request):
    data=course.objects.all()
    return render(request,'view_public_course.html',{'data1':data})
def quiz(request):
    data=question.objects.all()
    return render(request,'snippets.html',{'data1':data})
def search(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        return render(request,'search.html')
def searching(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=request.POST.get('search')
        if data:
            search_result=student_admission.objects.filter(student_id__icontains=data)
            fee_result=fee_payment.objects.filter(student_id_id=data)
            if search_result:
                if fee_result:
                    return render(request,'search_display.html',{'details':search_result,'fee':fee_result})
                # else:
                return render(request,'search_display2.html',{'details':search_result})
            else:
                return HttpResponse("Student Details Not Found")
        return render(request,"search.html")
def viewreview(request):
    if 'aid' not in request.session:
        return render(request,"login_page.html")
    else:
        data=review.objects.all()
        return render(request,'view_review.html',{'data1':data})
def viewpublicreview(request):
    data=review.objects.all()
    return render(request,'view_public_review.html',{'data1':data})
def adminindex(request):
    return render(request,'admin_index.html')
def studentindex(request):
    return render(request,'student_index.html')
def staffindex(request):
    return render(request,'staff_index.html')
def toast(request):
    return render(request,'toast.html')
# Create your views here.

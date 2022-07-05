"""PscCoaching URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from app1 import views
from django.conf.urls.static import static

urlpatterns = [
    path('admin/', admin.site.urls),
    path('sample/', views.sample),
    path('index/', views.index),
    path('form/', views.form),
    path('adminmenubar/', views.adminmenubar),
    path('addcourse/', views.addcourse),
    path('addingcourse/', views.addingcourse),
    path('table/', views.table),
    path('coursetbl/', views.coursetbl),
    path('removecourse/<str:p1>', views.removecourse),
    path('updatecourse/<str:p1>', views.updatecourse),
    path('updatedcourse/<str:p1>', views.updatedcourse),
    path('staffappoint/', views.staffappoint),
    path('staffappointing/', views.staffappointing),
    path('stafftbl/', views.stafftbl),
    path('updatestaff/<str:p1>', views.updatestaff),
    path('updatedstaff/<str:p1>', views.updatedstaff),
    path('removestaff/<str:p1>', views.removestaff),
    path('staffmenubar/', views.staffmenubar),
    path('registerstudent/', views.registerstudent),
    path('registeredstudent/', views.registeredstudent),
    path('viewapplication/', views.viewapplication),
    path('studenttbl/', views.studenttbl),
    path('admission/<str:p1>', views.admission),
    path('loginpage/', views.loginpage),
    path('logins/', views.logins),
    path('studentmenubar/', views.studentmenubar),
    path('indexmenubar/', views.indexmenubar),
    path('addevent/', views.addevent),
    path('addingevent/', views.addingevent),
    path('viewevent/', views.viewevent),
    path('eventtbl/', views.eventtbl),
    path('updateevent/<str:p1>', views.updateevent),
    path('removeevent/<str:p1>', views.removeevent),
    path('updatedevent/<str:p1>', views.updatedevent),
    path('addquestionbank/', views.addquestionbank),
    path('addingquestionbank/', views.addingquestionbank),
    path('questionbanktbl/', views.questionbanktbl),
    path('removequestionbank/<str:p1>', views.removequestionbank),
    path('addexam/', views.addexam),
    path('addingexam/', views.addingexam),
    path('addquestion/', views.addquestion),
    path('addingquestion/', views.addingquestion),
    path('questiontbl/', views.questiontbl),
    path('removequestion/<str:p1>', views.removequestion),
    path('sam/', views.sam),
    path('viewexam/', views.viewexam),
    path('registerexam/<str:p1>', views.registerexam),
    path('registeringexam/', views.registeringexam),
    path('viewexamregistration/', views.viewexamregistration),
    path('mockexamselection/', views.mockexamselection),
    path('mockexamselected/', views.mockexamselected),
    path('viewquestionbank/', views.viewquestionbank),
    path('mockexam/', views.mockexam),
    path('option1/<str:opid>/<str:qid>/<str:eid>', views.option1),
    path('option2/<str:opid>/<str:qid>/<str:eid>', views.option2),
    path('option3/<str:opid>/<str:qid>/<str:eid>', views.option3),
    path('option4/<str:opid>/<str:qid>/<str:eid>', views.option4),
    path('finishexam/', views.finishexam),
    path('feepayment/', views.feepayment),
    path('feepayed/', views.feepayed),
    path('viewfeecollection/', views.viewfeecollection),
    path('addreview/', views.addreview),
    path('addingreview/', views.addingreview),
    path('selectfeecollection/', views.selectfeecollection),
    path('viewresult/', views.viewresult),
    path('viewresultselection/', views.viewresultselection),
    path('viewstudentresult/', views.viewstudentresult),
    path('viewcourse/', views.viewcourse),
    path('quiz/', views.quiz),
    path('search/', views.search),
    path('searching/', views.searching),
    path('viewreview/', views.viewreview),
    path('logoutadmin/', views.logoutadmin),
    path('logoutstudent/', views.logoutstudent),
    path('logoutstaff/', views.logoutstaff),
    path('viewpubliccourse/', views.viewpubliccourse),
    path('viewpublicreview/', views.viewpublicreview),
    path('adminindex/', views.adminindex),
    path('studentindex/', views.studentindex),
    path('staffindex/', views.staffindex),
    path('toast/', views.toast),






]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
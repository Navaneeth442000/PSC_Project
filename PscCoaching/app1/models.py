from django.db import models

class course(models.Model):
    course_id = models.CharField(max_length=90,primary_key=True)
    course_name = models.CharField(max_length=30)
    fee = models.IntegerField()
    description = models.CharField(max_length=90)

    
    class Meta:
        db_table = "course"

class staff(models.Model):
    staff_id = models.CharField(max_length=90,primary_key=True)
    staff_name = models.CharField(max_length=30)
    doj = models.CharField(max_length=30)
    house_name = models.CharField(max_length=50)
    street = models.CharField(max_length=50)
    district = models.CharField(max_length=50)
    phone = models.CharField(max_length=30)
    email = models.CharField(max_length=50)
    dob = models.CharField(max_length=30)
    qualification = models.CharField(max_length=90)
    experience = models.CharField(max_length=50)
    status = models.CharField(max_length=50)

    
    class Meta:
        db_table = "staff"


class student(models.Model):
    student_appli_id = models.CharField(max_length=90,primary_key=True)
    student_name = models.CharField(max_length=30)
    course_id = models.ForeignKey(course,on_delete=models.CASCADE)
    admission_date = models.CharField(max_length=30)
    house_name = models.CharField(max_length=90)
    street = models.CharField(max_length=90)
    district = models.CharField(max_length=90)
    dob = models.CharField(max_length=30)
    phone = models.CharField(max_length=30)
    email = models.CharField(max_length=50)
    qualification = models.CharField(max_length=90)
    status = models.CharField(max_length=50)

    
    class Meta:
        db_table = "student"


class student_admission(models.Model):
    student_id = models.CharField(max_length=90,primary_key=True)
    student_name = models.CharField(max_length=30)
    course_id = models.ForeignKey(course,on_delete=models.CASCADE)
    admission_date = models.CharField(max_length=30)
    house_name = models.CharField(max_length=90)
    street = models.CharField(max_length=90)
    district = models.CharField(max_length=90)
    dob = models.CharField(max_length=30)
    phone = models.CharField(max_length=30)
    email = models.CharField(max_length=50)
    qualification = models.CharField(max_length=90)

    
    class Meta:
        db_table = "student_admission"


class login(models.Model):
    username = models.CharField(max_length=90,primary_key=True)
    password = models.CharField(max_length=30)
    category = models.CharField(max_length=30)

    
    class Meta:
        db_table = "login"


class event(models.Model):
    event_id = models.CharField(max_length=90,primary_key=True)
    event_name = models.CharField(max_length=50)
    event_date = models.CharField(max_length=90)
    description = models.CharField(max_length=100)
    status = models.CharField(max_length=50)

    
    class Meta:
        db_table = "event"


class question_bank(models.Model):
    questionbank_id = models.CharField(max_length=90,primary_key=True)
    question_paper = models.ImageField()
    answer_key = models.ImageField()

    class Meta:
        db_table = "question_bank"


class exam(models.Model):
    exam_id = models.CharField(max_length=90,primary_key=True)
    exam_name = models.CharField(max_length=50)
    eligibility = models.CharField(max_length=50)
    exam_type = models.CharField(max_length=50)

    
    class Meta:
        db_table = "exam"


class question(models.Model):
    question_id = models.CharField(max_length=90,primary_key=True)
    exam_id = models.ForeignKey(exam,on_delete=models.CASCADE)
    question = models.CharField(max_length=150)
    option1 = models.CharField(max_length=100)
    option2 = models.CharField(max_length=100)
    option3 = models.CharField(max_length=100)
    option4 = models.CharField(max_length=100)
    answer = models.CharField(max_length=100)
    status = models.CharField(max_length=30)

    
    class Meta:
        db_table = "question"


class exam_registration(models.Model):
    student_exam_id = models.CharField(max_length=90,primary_key=True)
    student_id = models.ForeignKey(student_admission,on_delete=models.CASCADE)
    exam_id = models.ForeignKey(exam,on_delete=models.CASCADE)
    status = models.CharField(max_length=30)
    
    class Meta:
        db_table = "exam_registration"


class result(models.Model):
    result_id = models.CharField(max_length=90,primary_key=True)
    student_id = models.ForeignKey(student_admission,on_delete=models.CASCADE)
    exam_id = models.ForeignKey(exam,on_delete=models.CASCADE)
    result = models.CharField(max_length=30)
    status = models.CharField(max_length=30)
    date = models.CharField(max_length=30)
    
    class Meta:
        db_table = "result"


class fee_payment(models.Model):
    payment_id = models.CharField(max_length=90,primary_key=True)
    student_id = models.ForeignKey(student_admission,on_delete=models.CASCADE)
    course_id = models.ForeignKey(course,on_delete=models.CASCADE)
    fee = models.CharField(max_length=30)
    payment_date = models.CharField(max_length=30)
    bank = models.CharField(max_length=30)
    account_no = models.CharField(max_length=30)
    ifsc_code = models.CharField(max_length=30)
    status = models.CharField(max_length=30)
    
    class Meta:
        db_table = "fee_payment"

class review(models.Model):
    review_id = models.CharField(max_length=90,primary_key=True)
    student_id = models.ForeignKey(student_admission,on_delete=models.CASCADE)
    review = models.CharField(max_length=150)
    review_date = models.CharField(max_length=30)
    
    class Meta:
        db_table = "review"


class tbl_idgen(models.Model):
    courseid=models.IntegerField()
    staffid=models.IntegerField()
    studid=models.IntegerField()
    eventid=models.IntegerField()
    qbankid=models.IntegerField()
    examid=models.IntegerField()
    qstid=models.IntegerField()
    studexamid=models.IntegerField()
    resultid=models.IntegerField()
    feeid=models.IntegerField()
    reviewid=models.IntegerField()


    class Meta:
        db_table = "tbl_idgen"

# Create your models here.

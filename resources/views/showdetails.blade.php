@extends('layouts.app')

@section('content')



<div class="container">
    
        <h1 class="text-center alert"> Welcome To The Employee Management System  </h1>

        <div class="details text-center">
            <h2 style="padding-top:20px;">Personal Details </h2>
            <p>Name : {{$user->name}} </p>
            <p>Personal Email : {{$user->email}} </p>
            <p>Phone Number : {{$user->details->phone_num}} </p>
            <p>CNIC Number : {{$user->details->cnic_num}} </p>
            </br>
            <h2>Office Details </h2>
            <p>Office ID : {{$user->details->office_id}} </p>
            <p>Office Email : {{$user->details->office_email}} </p>
            <p>Post : {{$user->details->post}} </p>
            <p>Work Description : {{$user->details->work_description}} </p>
            <p>Exchange Number : {{$user->details->exchange_num}} </p>
        </div>       
    </div>

<div class="container-fluid">
        <div class="footer text-center alert">

                <p style="margin-top: 270px;"> Copyright @ alnoorgroup.co </p>
        
        </div>

</div>


@endsection
@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header text-center">{{ __('Add User Office Details') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('userdetails') }}">
                        @csrf

                        <!-- phone -->
<div class="container ">
<div class="form-group row">
                            <label for="phone" class="col-md-4 col-form-label text-md-right">{{ __('Phone') }}</label>

                            <div class="col-md-6">
                                <input id="phone" type="text" class="form-control" name="phone" required>
                            </div>
                        </div>

<!-- phone end -->

<!-- cnic -->
                        <div class="form-group row">
                            <label for="cnic" class="col-md-4 col-form-label text-md-right">{{ __('CNIC') }}</label>

                            <div class="col-md-6">
                                <input id="cnic" type="text" class="form-control" name="cnic" required>
                            </div>
                        </div>

<!-- cnic end -->

<!-- office_id -->
                        <div class="form-group row">
                            <label for="office_id" class="col-md-4 col-form-label text-md-right">{{ __('Office ID') }}</label>

                            <div class="col-md-6">
                                <input id="office_id" type="text" class="form-control" name="office_id" required>
                            </div>
                        </div>

<!-- office_id end -->


<!-- office_email -->
                        <div class="form-group row">
                            <label for="office_email" class="col-md-4 col-form-label text-md-right">{{ __('Office Email') }}</label>

                            <div class="col-md-6">
                                <input id="office_email" type="email" class="form-control" name="office_email" required>
                            </div>
                        </div>

<!-- office_email end -->


<!-- exchange_num -->
                        <div class="form-group row">
                            <label for="exchange_num" class="col-md-4 col-form-label text-md-right">{{ __('Exchange Number') }}</label>

                            <div class="col-md-6">
                                <input id="exchange_num" type="text" class="form-control" name="exchange_num" required>
                            </div>
                        </div>

<!-- exchange_num end -->

<!-- post -->
                        <div class="form-group row">
                            <label for="post" class="col-md-4 col-form-label text-md-right">{{ __('Post') }}</label>

                            <div class="col-md-6">
                                <input id="post" type="text" class="form-control" name="post" required>
                            </div>
                        </div>

<!-- post end -->

<!-- work_description -->
                        <div class="form-group row">
                            <label for="work_description" class="col-md-4 col-form-label text-md-right">{{ __('Work Description') }}</label>

                            <div class="col-md-6">
                                <input id="work_description" type="text" class="form-control" name="work_description" required>
                            </div>
                        </div>

<!-- work_description end -->



                        <div class="form-group row mb-0 text-center">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Submit') }}
                                </button>
                            </div>
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

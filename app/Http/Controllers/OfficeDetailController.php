<?php

namespace App\Http\Controllers;

use App\OfficeDetail;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class OfficeDetailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $user = User::find(Auth::id());
        return view('showdetails',compact('user'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create( Request $request )
    {
        $register_id = User::orderBy('id', 'DESC')->first();
        $details = OfficeDetail::create([
                                'registry_id' => $register_id->id,
                                'phone_num' => $request->input('phone'),
                                'cnic_num' => $request->input('cnic'),
                                'post' => $request->input('post'),
                                'work_description' => $request->input('work_description'),
                                'exchange_num' => $request->input('exchange_num'),
                                'office_id' => $request->input('office_id'),
                                'office_email' => $request->input('office_email'),
                            ]);

        return view('mainpage',compact('details'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Office_Detail  $office_Detail
     * @return \Illuminate\Http\Response
     */
    public function show(Office_Detail $office_Detail)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Office_Detail  $office_Detail
     * @return \Illuminate\Http\Response
     */
    public function edit(Office_Detail $office_Detail)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Office_Detail  $office_Detail
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Office_Detail $office_Detail)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Office_Detail  $office_Detail
     * @return \Illuminate\Http\Response
     */
    public function destroy(Office_Detail $office_Detail)
    {
        //
    }
}

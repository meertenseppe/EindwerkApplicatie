@extends('layouts.app') <!--basic app template-->

@section('head')
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">

      <title>{{ config('app.name', 'FXfinder') }}</title>

      <!-- Fonts -->
      <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

      <!-- Styles -->
      <style>
          html, body {
              background-color: #fff;
              color: #636b6f;
              font-family: 'Nunito', sans-serif;
              font-weight: 200;
              height: 100vh;
              margin: 0;
          }

          .content {
              text-align: center;
          }

          .title {
              font-size: 84px;
          }


          .m-b-md {
              margin-bottom: 30px;
          }
      </style>


@endsection

@section('content')

            <div class="content">
                <div class="title m-b-md">
                    FXfinder
                </div>
                <div class="description">
                  {{setting('site.description')}}
                </div>
            </div>
@endsection

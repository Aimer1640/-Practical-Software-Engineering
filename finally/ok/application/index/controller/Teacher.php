<?php
namespace app\index\controller;
use app\index\controller\Base;

use think\Controller;
use think\helper\Str;
use think\Request;
use think\File;
use think\View;

class Teacher extends Base
{


    public function  tindex()
    {
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);

        $req=db('body')->paginate(3);
        $this->assign('body',$req);

        $ret=db('com')->select();
        $this->assign('com',$ret);
        return view('tindex');
    }
    public  function Tcontent()
    {

        return View('tcontent');
    }

    public  function tkt()
    {
        return view('tkt');
    }

    public  function tsure()
    {
        $sno=input('sno');
        $res=db('student')->where('sno',$sno)->find();
        $this->assign('student',$res);
        if ($res['steacher']==null){
            $res=db('student')->where('sno',$res['sno'])->update(['steacher'=>'王老师	']);
        }else{
            $res=db('student')->where('sno',$res['sno'])->update(['steacher'=>null]);
        }

        $req=db('student')->select();
        $this->assign('student',$req);

        return view('tsure');
    }
    public  function tstudentlist(Request $req)
    {


        $rem=db('student')->select();
        $this->assign('student',$rem);

        return view('tstudentlist');
    }
    public  function tstudentlist2()
    {
        return view('tstudentlist2');
    }
    public  function tmdbstudentlist(Request $req)
    {
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);

        $rem=db('student')->select();
        $this->assign('student',$rem);
//        var_dump($rem);

        if($req->isGet()){
            $num=$req->param('num');
            $row=db('body')->where('num',$num)->find();
            $this->assign('body',$row);
        }
        return view('tmdbstudentlist');
    }
    public  function tyansou(Request $req)
    {
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);

        $rem=db('student')->select();
        $this->assign('student',$rem);
//        var_dump($rem);

        if($req->isGet()){
            $num=$req->param('num');
            $row=db('body')->where('num',$num)->find();
            $this->assign('body',$row);
        }
        return view('tyansou');
    }

    public function scommenttea(Request $req){
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);

        $rem=db('teacher')->select();
        $this->assign('teacher',$rem);
        $ret=db('com')->select();
        $this->assign('com',$ret);
//        var_dump($rem);

        if($req->isGet()){
            $num=$req->param('num');
            $row=db('teacher')->where('num',$num)->find();
            $this->assign('teacher',$row);

            $rod=db('com')->where('num',$num)->find();
            $this->assign('com',$rod);
        }
        if ($req->isPost()){
            $data=$req->post();
            $updateTime=date('Y-m-d H:i:s');
            $data=array_merge($data,array('updateTime'=>$updateTime));
            $res=db('com')->where('num',$data['num'])->update($data);
            var_dump($res);
            if ($res){
                $this->success('留言成功',url ('sindex'));
            }else{
                $this->error('留言失败',url('sindex'));
            }
        }

        return view('tcomment');
    }
    public  function tstudentdown()
    {
        return view('tstudentdown');
    }
    public  function tstudentscore()
    {
        return view('tstudentscore');
    }
    public  function tstudentlunwen()
    {
        return view('tstudentlunwen');
    }
    public  function tsuremdb()
    {
        return view('tsuremdb');
    }
    public  function tktbg()
    {
        return view('tktbg');
    }
    public  function tcom()
    {
        $ret=db('teacher')->select();
        $this->assign('teacher',$ret);
        $rem=db('student')->select();
        $this->assign('student',$rem);
        return view('tcom');
    }
    public  function tstudentinfo()
    {
        $rem=db('student')->select();
        $this->assign('student',$rem);
        return view('tstudentinfo');
    }
    public  function tchange()
    {
        $sno=input('sno');
        $res=db('student')->where('sno',$sno)->find();
        $this->assign('student',$res);
        if ($res['sbudabian']==0){
            $res=db('student')->where('sno',$res['sno'])->update(['sbudabian'=>'1']);
        }else{
            $res=db('student')->where('sno',$res['sno'])->update(['sbudabian'=>0]);
        }
        $rem=db('student')->select();
        $this->assign('student',$rem);
        return view('tmdbstudentlist');
    }
    public  function tchangeteacher()
    {
//        $sno=input('sno');
//        $res=db('student')->where('sno',$sno)->find();
//        $this->assign('student',$res);
//        if ($res['steacher']==null){
//            $res=db('student')->where('sno',$res['sno'])->update(['steacher'=>'王老师	']);
//        }else{
//            $res=db('student')->where('sno',$res['sno'])->update(['steacher'=>null]);
//        }
//        $rem=db('student')->select();
//        $this->assign('student',$rem);
        return view('tsure');
    }
    public  function tstudentlistscore(){
        $sno=input('sno');
        $res=db('student')->where('sno',$sno)->find();
        $this->assign('student',$res);
        return view('tstudentlistscore');
    }
    public  function tstudentlistscore1(Request $req){

        $res=db('student')->select();
        $this->assign('student',$res);;
        if ($req->isPost()) {
            $data = $req->post();
//            var_dump($data);
            $score=(int)$data['sscore'];
            $res=db('student')->where('sno',$data['sno'])->update(['sscore'=>$score]);
        }
        $rem=db('student')->select();
        $this->assign('student',$rem);;
        return view('tstudentlist');
    }

}

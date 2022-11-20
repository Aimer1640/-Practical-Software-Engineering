<?php
namespace app\index\controller;
use app\index\controller\Base;

use think\Controller;
use think\Request;
use think\File;
class Index extends Base
{

    public function index1()
    {
        $req=db('body')->paginate(3);
        $this->assign('body',$req);
        $rep=db('body')->paginate(2);
        $this->assign('body2',$rep);
        $rep=db('body')->paginate(5);
        $this->assign('body3',$rep);
       return view('index1');

    }
    public function sindex()
    {
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);

        $req=db('body')->paginate(3);
        $this->assign('body',$req);

        $ret=db('com')->select();
        $this->assign('com',$ret);

        return view('sindex');

    }
    public function add(Request $req){
//        dump($req->post());
//        exit;
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);
        $ref=db('body')->select();
        $this->assign('body',$ref);
        if ($req->isPost()){
            $data=$req->post();
            $postTime=$updateTime=date('Y-m-d H:i:s');
            $data=array_merge($data,array('postTime'=>$postTime,'updateTime'=>$updateTime));
            $res=db('body')->insert($data);
            if ($res){
                $this->success('发布成功',url('index/sindex'));
            }else{
                $this->error('发布失败',url('index/supload'));
            }
        }

    }

    public function choiceteacher(Request $req){
        if ($req->isPost()){
            $data=$req->post();
//            var_dump($data);
            $res=db('user')->where('username',$data['username'])->update($data);
            var_dump($res);
            if ($res){
                $this->success('选择成功',url ('sindex'));
            }else{
                $this->error('选择失败',url('sindex'));
            }
        }
        return view('sindex');
    }



    //提交项目进度
    public function upprogress(Request $req){
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);
        $ret=db('progress')->select();
        $this->assign('progress',$ret);
        if($req->isGet()){
            $num=$req->param('num');
            $row=db('progress')->where('num',$num)->find();
            $this->assign('progress',$row);
        }
        if ($req->isPost()){
            $data=$req->post();
            $updateTime=date('Y-m-d H:i:s');
            $data=array_merge($data,array('updateTime'=>$updateTime));
            $res=db('progress')->where('stuid',$data['stuid'])->update($data);
            var_dump($res);
            if ($res){
                $this->success('更新成功',url ('sindex'));
            }else{
                $this->error('更新失败',url('sindex'));
            }
        }

        return view('edit');
    }


    public function smdb(){
        return view('smdb');
    }

    public function submitmdb(Request $req){
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);
        $ret=db('student')->select();
        $this->assign('student',$ret);
        if($req->isGet()){
            $num=$req->param('sno');
            $row=db('student')->where('sno',$num)->find();
            $this->assign('student',$row);
        }
        if ($req->isPost()){
            $data=$req->post();
//            $postTime=$updateTime=date('Y-m-d H:i:s');
//            $data=array_merge($data,array('postTime'=>$postTime,'updateTime'=>$updateTime));
            $res=db('student')->insert($data);
            if ($res){
                $this->success('提交成功',url('sindex'));
            }else{
                $this->error('提交失败',url('sindex'));
            }
        }

        return view('sindex');
    }

    // 文件上传
    public function uploads(){
        // 获取表单上传文件
        $files = request()->file('file');
        foreach($files as $file){
            // 移动到框架应用根目录/public/uploads/ 目录下
            $name=iconv('utf-8','gbk',$file->getInfo()[
                'name']);
            $info = $file->move('public/uploads',$name);
            if($info){
                // 成功上传后 获取上传信息
                // 输出 jpg
                echo $info->getExtension();
                // 输出 文件名
                echo $info->getFilename();
            }else{
                // 上传失败获取错误信息
                echo $file->getError();
            }
            $data = [
                ['uploadfile' => $info->getFilename()]
            ];
            $db = db('uploadfile') -> insertAll($data);
        }
        return $this -> success('文件上传成功','sindex');
    }

    public function skip(){
        return view('login');
    }

    public function upload(){
        return view('upload');
    }
    public function scontent(){
        return view('scontent');
    }
    public function schoose(){
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);

        $req=db('teacher')->paginate(5);
        $this->assign('teacher',$req);

        $ret=db('com')->select();
        $this->assign('com',$ret);
//        return view();

        return view('schoose');
    }
    public function sdbinfo(){
//        $res=db('student')->select();
////        var_dump($res);
//        $this->assign('student',$res);
        $row=db('student')->where('sno','101')->find();
//        var_dump($row);
        $this->assign('student',$row);


        return view('sdbinfo');
    }
    public function sktbg(){
        return view('sktbg');
    }

    public function szqjc(){
        return view('supload');
    }

    public function showteacher(Request $req){
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

        return view('showteacher');
    }


   

    public function scomment(Request $req){
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);

        $rem=db('teacher')->select();
        $this->assign('teacher',$rem);
        var_dump($rem);

        if($req->isGet()){
            $num=$req->param('num');
            $row=db('body')->where('num',$num)->find();
            $this->assign('body',$row);
        }


        return view('scomment');
    }


    public function scom(Request $req){
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);

        $rem=db('teacher')->select();
        $this->assign('teacher',$rem);
//        var_dump($rem);

        if($req->isGet()){
            $num=$req->param('num');
            $row=db('body')->where('num',$num)->find();
            $this->assign('body',$row);
        }


        return view('scom');
    }

    public function sproject(){
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);

        $req=db('body')->paginate(5);
        $this->assign('body',$req);

        $ret=db('com')->select();
        $this->assign('com',$ret);
//        return view();
        return view('sproject');
    }

    public function show(Request $req){
        $res=db('user')->select();
//        var_dump($res);
        $this->assign('ids',$res);
        $ret=db('body')->select();
        $this->assign('body',$ret);
        if($req->isGet()){
            $num=$req->param('num');
            $row=db('body')->where('num',$num)->find();
            $this->assign('body',$row);
        }
        if ($req->isPost()){
            $data=$req->post();
//            $updateTime=date('Y-m-d H:i:s');
//            $data=array_merge($data,array('updateTime'=>$updateTime));
            $res=db('user')->where('id',$data['id'])->update($data);
            var_dump($res);
            if ($res){
                $this->success('选题成功',url ('sindex'));
            }else{
                $this->error('选题失败',url('sindex'));
            }
        }


        return view('show');
//        return view('index/edit');
    }


    public function com(Request $req){
        if ($req->isPost()){
            $data=$req->post();
            $res=db('com')->where('username',$data['username'])->update($data);
            var_dump($res);
            if ($res){
                $this->success('更新成功',url ('sindex'));
            }else{
                $this->error('更新失败',url('sindex'));
            }
        }
    }

}

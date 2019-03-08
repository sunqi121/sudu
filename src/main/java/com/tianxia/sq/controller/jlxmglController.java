package com.tianxia.sq.controller;

import com.jwcyzhpt.common.util.EUIDataGridResult;
import com.jwcyzhpt.modules.manage.entity.vo.jlxmglVo;
import com.jwcyzhpt.modules.manage.service.jlxmglService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;


@Controller
@RequestMapping("/xfzhgl")
public class jlxmglController {

	@Autowired
	private jlxmglService jlxmglSer;



	//查询
	@ResponseBody
	@RequestMapping("/findJlxm")
	public EUIDataGridResult findJlxmList(
			@RequestParam(value = "page", defaultValue = "1", required = false) Integer page,
			@RequestParam(value = "rows", defaultValue = "5", required = false) Integer rows,
			jlxmglVo jlxm,HttpServletRequest request) {
		/*System.out.println("666jlxm:"+jlxm);*/
		System.out.println("我是本地仓库");
			return jlxmglSer.findJlxm(page,rows,jlxm);

	}

	//新增专业
	@ResponseBody
	@RequestMapping("/insertJlxm")
	public int insertMajor(@RequestBody jlxmglVo jlxm) {


		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		jlxm.setJlxmCtime(df.format(new Date()));
		System.out.println("888jlxm:"+jlxm);
		/*major.setMajorGuid("12345678");*/

		return jlxmglSer.insertJlxm(jlxm);

	}

	//删除专业
	@ResponseBody
	@RequestMapping("/delJlxm")
	public int delMajor(HttpServletRequest request, jlxmglVo jlxm) {

		return jlxmglSer.delJlxm(jlxm);

	}


	//修改专业
	@ResponseBody
	@RequestMapping("/updateJlxm")
	public int updateMajor(@RequestBody jlxmglVo jlxm) {

		return jlxmglSer.updateJlxm(jlxm);

	}

}

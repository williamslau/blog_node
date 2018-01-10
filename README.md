# blog_node

# 有关git
	# git第一次提交时候的命令
	# 初始化
	git init
	# 添加
	git add .
	# 添加备注
	git commit -m 'first commit'
	# 添加仓库地址
	git remote add origin https://github.com/williamslau/blog_vue.git
	# 执行push
	git push -u origin master
	#克隆到本地
	git clone 地址

	#git 文件过滤
		git init (不知道管不管用)
		创建.gitignore文件
		touch .gitignore
		这时项目根目录里会有.gitignore文件
		编辑.gitignore文件
		vim .gitignore
		然后在里面加入
		node_modules/
		表示我们不希望将node_modules/文件夹提交到git中，然后退出vim：按Esc，退出编辑模式，然后按shift + ;（就是打一个:），再输入q!(不保存)或者wq!（保存）

		
# 有关网址
	# canvas素材：
		http://www.17sucai.com/pins/tag/418.html
	# 配色参考：
		http://blog.jobbole.com/89316/
		主要还是以高明度，低饱和度的灰色为主色调，半透明模糊有一点磨砂玻璃的感觉，使页面看起来通透，有层次感
	# 排版参考
		章斌的个人博客
        	http://www.zbzero.com
		知乎回答：
			https://www.zhihu.com/question/20463581
			http://hill1895.rocks/
		左右布局，每个博客有标签属性，页面层级不深，布局简单，虽然老套，但是使用，稳重，容易
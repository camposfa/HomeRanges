<!DOCTYPE html>
<!-- saved from url=(0014)about:internet -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="x-ua-compatible" content="IE=9" >

<title>Home Ranges</title>

<style type="text/css">
body, td {
   font-family: sans-serif;
   background-color: white;
   font-size: 12px;
   margin: 8px;
}

tt, code, pre {
   font-family: 'DejaVu Sans Mono', 'Droid Sans Mono', 'Lucida Console', Consolas, Monaco, monospace;
}

h1 { 
   font-size:2.2em; 
}

h2 { 
   font-size:1.8em; 
}

h3 { 
   font-size:1.4em; 
}

h4 { 
   font-size:1.0em; 
}

h5 { 
   font-size:0.9em; 
}

h6 { 
   font-size:0.8em; 
}

a:visited {
   color: rgb(50%, 0%, 50%);
}

pre {	
   margin-top: 0;
   max-width: 95%;
   border: 1px solid #ccc;
   white-space: pre-wrap;
}

pre code {
   display: block; padding: 0.5em;
}

code.r, code.cpp {
   background-color: #F8F8F8;
}

table, td, th {
  border: none;
}

blockquote {
   color:#666666;
   margin:0;
   padding-left: 1em;
   border-left: 0.5em #EEE solid;
}

hr {
   height: 0px;
   border-bottom: none;
   border-top-width: thin;
   border-top-style: dotted;
   border-top-color: #999999;
}

@media print {
   * { 
      background: transparent !important; 
      color: black !important; 
      filter:none !important; 
      -ms-filter: none !important; 
   }

   body { 
      font-size:12pt; 
      max-width:100%; 
   }
       
   a, a:visited { 
      text-decoration: underline; 
   }

   hr { 
      visibility: hidden;
      page-break-before: always;
   }

   pre, blockquote { 
      padding-right: 1em; 
      page-break-inside: avoid; 
   }

   tr, img { 
      page-break-inside: avoid; 
   }

   img { 
      max-width: 100% !important; 
   }

   @page :left { 
      margin: 15mm 20mm 15mm 10mm; 
   }
     
   @page :right { 
      margin: 15mm 10mm 15mm 20mm; 
   }

   p, h2, h3 { 
      orphans: 3; widows: 3; 
   }

   h2, h3 { 
      page-break-after: avoid; 
   }
}

</style>

<!-- Styles for R syntax highlighter -->
<style type="text/css">
   pre .operator,
   pre .paren {
     color: rgb(104, 118, 135)
   }

   pre .literal {
     color: rgb(88, 72, 246)
   }

   pre .number {
     color: rgb(0, 0, 205);
   }

   pre .comment {
     color: rgb(76, 136, 107);
   }

   pre .keyword {
     color: rgb(0, 0, 255);
   }

   pre .identifier {
     color: rgb(0, 0, 0);
   }

   pre .string {
     color: rgb(3, 106, 7);
   }
</style>

<!-- R syntax highlighter -->
<script type="text/javascript">
var hljs=new function(){function m(p){return p.replace(/&/gm,"&amp;").replace(/</gm,"&lt;")}function f(r,q,p){return RegExp(q,"m"+(r.cI?"i":"")+(p?"g":""))}function b(r){for(var p=0;p<r.childNodes.length;p++){var q=r.childNodes[p];if(q.nodeName=="CODE"){return q}if(!(q.nodeType==3&&q.nodeValue.match(/\s+/))){break}}}function h(t,s){var p="";for(var r=0;r<t.childNodes.length;r++){if(t.childNodes[r].nodeType==3){var q=t.childNodes[r].nodeValue;if(s){q=q.replace(/\n/g,"")}p+=q}else{if(t.childNodes[r].nodeName=="BR"){p+="\n"}else{p+=h(t.childNodes[r])}}}if(/MSIE [678]/.test(navigator.userAgent)){p=p.replace(/\r/g,"\n")}return p}function a(s){var r=s.className.split(/\s+/);r=r.concat(s.parentNode.className.split(/\s+/));for(var q=0;q<r.length;q++){var p=r[q].replace(/^language-/,"");if(e[p]){return p}}}function c(q){var p=[];(function(s,t){for(var r=0;r<s.childNodes.length;r++){if(s.childNodes[r].nodeType==3){t+=s.childNodes[r].nodeValue.length}else{if(s.childNodes[r].nodeName=="BR"){t+=1}else{if(s.childNodes[r].nodeType==1){p.push({event:"start",offset:t,node:s.childNodes[r]});t=arguments.callee(s.childNodes[r],t);p.push({event:"stop",offset:t,node:s.childNodes[r]})}}}}return t})(q,0);return p}function k(y,w,x){var q=0;var z="";var s=[];function u(){if(y.length&&w.length){if(y[0].offset!=w[0].offset){return(y[0].offset<w[0].offset)?y:w}else{return w[0].event=="start"?y:w}}else{return y.length?y:w}}function t(D){var A="<"+D.nodeName.toLowerCase();for(var B=0;B<D.attributes.length;B++){var C=D.attributes[B];A+=" "+C.nodeName.toLowerCase();if(C.value!==undefined&&C.value!==false&&C.value!==null){A+='="'+m(C.value)+'"'}}return A+">"}while(y.length||w.length){var v=u().splice(0,1)[0];z+=m(x.substr(q,v.offset-q));q=v.offset;if(v.event=="start"){z+=t(v.node);s.push(v.node)}else{if(v.event=="stop"){var p,r=s.length;do{r--;p=s[r];z+=("</"+p.nodeName.toLowerCase()+">")}while(p!=v.node);s.splice(r,1);while(r<s.length){z+=t(s[r]);r++}}}}return z+m(x.substr(q))}function j(){function q(x,y,v){if(x.compiled){return}var u;var s=[];if(x.k){x.lR=f(y,x.l||hljs.IR,true);for(var w in x.k){if(!x.k.hasOwnProperty(w)){continue}if(x.k[w] instanceof Object){u=x.k[w]}else{u=x.k;w="keyword"}for(var r in u){if(!u.hasOwnProperty(r)){continue}x.k[r]=[w,u[r]];s.push(r)}}}if(!v){if(x.bWK){x.b="\\b("+s.join("|")+")\\s"}x.bR=f(y,x.b?x.b:"\\B|\\b");if(!x.e&&!x.eW){x.e="\\B|\\b"}if(x.e){x.eR=f(y,x.e)}}if(x.i){x.iR=f(y,x.i)}if(x.r===undefined){x.r=1}if(!x.c){x.c=[]}x.compiled=true;for(var t=0;t<x.c.length;t++){if(x.c[t]=="self"){x.c[t]=x}q(x.c[t],y,false)}if(x.starts){q(x.starts,y,false)}}for(var p in e){if(!e.hasOwnProperty(p)){continue}q(e[p].dM,e[p],true)}}function d(B,C){if(!j.called){j();j.called=true}function q(r,M){for(var L=0;L<M.c.length;L++){if((M.c[L].bR.exec(r)||[null])[0]==r){return M.c[L]}}}function v(L,r){if(D[L].e&&D[L].eR.test(r)){return 1}if(D[L].eW){var M=v(L-1,r);return M?M+1:0}return 0}function w(r,L){return L.i&&L.iR.test(r)}function K(N,O){var M=[];for(var L=0;L<N.c.length;L++){M.push(N.c[L].b)}var r=D.length-1;do{if(D[r].e){M.push(D[r].e)}r--}while(D[r+1].eW);if(N.i){M.push(N.i)}return f(O,M.join("|"),true)}function p(M,L){var N=D[D.length-1];if(!N.t){N.t=K(N,E)}N.t.lastIndex=L;var r=N.t.exec(M);return r?[M.substr(L,r.index-L),r[0],false]:[M.substr(L),"",true]}function z(N,r){var L=E.cI?r[0].toLowerCase():r[0];var M=N.k[L];if(M&&M instanceof Array){return M}return false}function F(L,P){L=m(L);if(!P.k){return L}var r="";var O=0;P.lR.lastIndex=0;var M=P.lR.exec(L);while(M){r+=L.substr(O,M.index-O);var N=z(P,M);if(N){x+=N[1];r+='<span class="'+N[0]+'">'+M[0]+"</span>"}else{r+=M[0]}O=P.lR.lastIndex;M=P.lR.exec(L)}return r+L.substr(O,L.length-O)}function J(L,M){if(M.sL&&e[M.sL]){var r=d(M.sL,L);x+=r.keyword_count;return r.value}else{return F(L,M)}}function I(M,r){var L=M.cN?'<span class="'+M.cN+'">':"";if(M.rB){y+=L;M.buffer=""}else{if(M.eB){y+=m(r)+L;M.buffer=""}else{y+=L;M.buffer=r}}D.push(M);A+=M.r}function G(N,M,Q){var R=D[D.length-1];if(Q){y+=J(R.buffer+N,R);return false}var P=q(M,R);if(P){y+=J(R.buffer+N,R);I(P,M);return P.rB}var L=v(D.length-1,M);if(L){var O=R.cN?"</span>":"";if(R.rE){y+=J(R.buffer+N,R)+O}else{if(R.eE){y+=J(R.buffer+N,R)+O+m(M)}else{y+=J(R.buffer+N+M,R)+O}}while(L>1){O=D[D.length-2].cN?"</span>":"";y+=O;L--;D.length--}var r=D[D.length-1];D.length--;D[D.length-1].buffer="";if(r.starts){I(r.starts,"")}return R.rE}if(w(M,R)){throw"Illegal"}}var E=e[B];var D=[E.dM];var A=0;var x=0;var y="";try{var s,u=0;E.dM.buffer="";do{s=p(C,u);var t=G(s[0],s[1],s[2]);u+=s[0].length;if(!t){u+=s[1].length}}while(!s[2]);if(D.length>1){throw"Illegal"}return{r:A,keyword_count:x,value:y}}catch(H){if(H=="Illegal"){return{r:0,keyword_count:0,value:m(C)}}else{throw H}}}function g(t){var p={keyword_count:0,r:0,value:m(t)};var r=p;for(var q in e){if(!e.hasOwnProperty(q)){continue}var s=d(q,t);s.language=q;if(s.keyword_count+s.r>r.keyword_count+r.r){r=s}if(s.keyword_count+s.r>p.keyword_count+p.r){r=p;p=s}}if(r.language){p.second_best=r}return p}function i(r,q,p){if(q){r=r.replace(/^((<[^>]+>|\t)+)/gm,function(t,w,v,u){return w.replace(/\t/g,q)})}if(p){r=r.replace(/\n/g,"<br>")}return r}function n(t,w,r){var x=h(t,r);var v=a(t);var y,s;if(v){y=d(v,x)}else{return}var q=c(t);if(q.length){s=document.createElement("pre");s.innerHTML=y.value;y.value=k(q,c(s),x)}y.value=i(y.value,w,r);var u=t.className;if(!u.match("(\\s|^)(language-)?"+v+"(\\s|$)")){u=u?(u+" "+v):v}if(/MSIE [678]/.test(navigator.userAgent)&&t.tagName=="CODE"&&t.parentNode.tagName=="PRE"){s=t.parentNode;var p=document.createElement("div");p.innerHTML="<pre><code>"+y.value+"</code></pre>";t=p.firstChild.firstChild;p.firstChild.cN=s.cN;s.parentNode.replaceChild(p.firstChild,s)}else{t.innerHTML=y.value}t.className=u;t.result={language:v,kw:y.keyword_count,re:y.r};if(y.second_best){t.second_best={language:y.second_best.language,kw:y.second_best.keyword_count,re:y.second_best.r}}}function o(){if(o.called){return}o.called=true;var r=document.getElementsByTagName("pre");for(var p=0;p<r.length;p++){var q=b(r[p]);if(q){n(q,hljs.tabReplace)}}}function l(){if(window.addEventListener){window.addEventListener("DOMContentLoaded",o,false);window.addEventListener("load",o,false)}else{if(window.attachEvent){window.attachEvent("onload",o)}else{window.onload=o}}}var e={};this.LANGUAGES=e;this.highlight=d;this.highlightAuto=g;this.fixMarkup=i;this.highlightBlock=n;this.initHighlighting=o;this.initHighlightingOnLoad=l;this.IR="[a-zA-Z][a-zA-Z0-9_]*";this.UIR="[a-zA-Z_][a-zA-Z0-9_]*";this.NR="\\b\\d+(\\.\\d+)?";this.CNR="\\b(0[xX][a-fA-F0-9]+|(\\d+(\\.\\d*)?|\\.\\d+)([eE][-+]?\\d+)?)";this.BNR="\\b(0b[01]+)";this.RSR="!|!=|!==|%|%=|&|&&|&=|\\*|\\*=|\\+|\\+=|,|\\.|-|-=|/|/=|:|;|<|<<|<<=|<=|=|==|===|>|>=|>>|>>=|>>>|>>>=|\\?|\\[|\\{|\\(|\\^|\\^=|\\||\\|=|\\|\\||~";this.ER="(?![\\s\\S])";this.BE={b:"\\\\.",r:0};this.ASM={cN:"string",b:"'",e:"'",i:"\\n",c:[this.BE],r:0};this.QSM={cN:"string",b:'"',e:'"',i:"\\n",c:[this.BE],r:0};this.CLCM={cN:"comment",b:"//",e:"$"};this.CBLCLM={cN:"comment",b:"/\\*",e:"\\*/"};this.HCM={cN:"comment",b:"#",e:"$"};this.NM={cN:"number",b:this.NR,r:0};this.CNM={cN:"number",b:this.CNR,r:0};this.BNM={cN:"number",b:this.BNR,r:0};this.inherit=function(r,s){var p={};for(var q in r){p[q]=r[q]}if(s){for(var q in s){p[q]=s[q]}}return p}}();hljs.LANGUAGES.cpp=function(){var a={keyword:{"false":1,"int":1,"float":1,"while":1,"private":1,"char":1,"catch":1,"export":1,virtual:1,operator:2,sizeof:2,dynamic_cast:2,typedef:2,const_cast:2,"const":1,struct:1,"for":1,static_cast:2,union:1,namespace:1,unsigned:1,"long":1,"throw":1,"volatile":2,"static":1,"protected":1,bool:1,template:1,mutable:1,"if":1,"public":1,friend:2,"do":1,"return":1,"goto":1,auto:1,"void":2,"enum":1,"else":1,"break":1,"new":1,extern:1,using:1,"true":1,"class":1,asm:1,"case":1,typeid:1,"short":1,reinterpret_cast:2,"default":1,"double":1,register:1,explicit:1,signed:1,typename:1,"try":1,"this":1,"switch":1,"continue":1,wchar_t:1,inline:1,"delete":1,alignof:1,char16_t:1,char32_t:1,constexpr:1,decltype:1,noexcept:1,nullptr:1,static_assert:1,thread_local:1,restrict:1,_Bool:1,complex:1},built_in:{std:1,string:1,cin:1,cout:1,cerr:1,clog:1,stringstream:1,istringstream:1,ostringstream:1,auto_ptr:1,deque:1,list:1,queue:1,stack:1,vector:1,map:1,set:1,bitset:1,multiset:1,multimap:1,unordered_set:1,unordered_map:1,unordered_multiset:1,unordered_multimap:1,array:1,shared_ptr:1}};return{dM:{k:a,i:"</",c:[hljs.CLCM,hljs.CBLCLM,hljs.QSM,{cN:"string",b:"'\\\\?.",e:"'",i:"."},{cN:"number",b:"\\b(\\d+(\\.\\d*)?|\\.\\d+)(u|U|l|L|ul|UL|f|F)"},hljs.CNM,{cN:"preprocessor",b:"#",e:"$"},{cN:"stl_container",b:"\\b(deque|list|queue|stack|vector|map|set|bitset|multiset|multimap|unordered_map|unordered_set|unordered_multiset|unordered_multimap|array)\\s*<",e:">",k:a,r:10,c:["self"]}]}}}();hljs.LANGUAGES.r={dM:{c:[hljs.HCM,{cN:"number",b:"\\b0[xX][0-9a-fA-F]+[Li]?\\b",e:hljs.IMMEDIATE_RE,r:0},{cN:"number",b:"\\b\\d+(?:[eE][+\\-]?\\d*)?L\\b",e:hljs.IMMEDIATE_RE,r:0},{cN:"number",b:"\\b\\d+\\.(?!\\d)(?:i\\b)?",e:hljs.IMMEDIATE_RE,r:1},{cN:"number",b:"\\b\\d+(?:\\.\\d*)?(?:[eE][+\\-]?\\d*)?i?\\b",e:hljs.IMMEDIATE_RE,r:0},{cN:"number",b:"\\.\\d+(?:[eE][+\\-]?\\d*)?i?\\b",e:hljs.IMMEDIATE_RE,r:1},{cN:"keyword",b:"(?:tryCatch|library|setGeneric|setGroupGeneric)\\b",e:hljs.IMMEDIATE_RE,r:10},{cN:"keyword",b:"\\.\\.\\.",e:hljs.IMMEDIATE_RE,r:10},{cN:"keyword",b:"\\.\\.\\d+(?![\\w.])",e:hljs.IMMEDIATE_RE,r:10},{cN:"keyword",b:"\\b(?:function)",e:hljs.IMMEDIATE_RE,r:2},{cN:"keyword",b:"(?:if|in|break|next|repeat|else|for|return|switch|while|try|stop|warning|require|attach|detach|source|setMethod|setClass)\\b",e:hljs.IMMEDIATE_RE,r:1},{cN:"literal",b:"(?:NA|NA_integer_|NA_real_|NA_character_|NA_complex_)\\b",e:hljs.IMMEDIATE_RE,r:10},{cN:"literal",b:"(?:NULL|TRUE|FALSE|T|F|Inf|NaN)\\b",e:hljs.IMMEDIATE_RE,r:1},{cN:"identifier",b:"[a-zA-Z.][a-zA-Z0-9._]*\\b",e:hljs.IMMEDIATE_RE,r:0},{cN:"operator",b:"<\\-(?!\\s*\\d)",e:hljs.IMMEDIATE_RE,r:2},{cN:"operator",b:"\\->|<\\-",e:hljs.IMMEDIATE_RE,r:1},{cN:"operator",b:"%%|~",e:hljs.IMMEDIATE_RE},{cN:"operator",b:">=|<=|==|!=|\\|\\||&&|=|\\+|\\-|\\*|/|\\^|>|<|!|&|\\||\\$|:",e:hljs.IMMEDIATE_RE,r:0},{cN:"operator",b:"%",e:"%",i:"\\n",r:1},{cN:"identifier",b:"`",e:"`",r:0},{cN:"string",b:'"',e:'"',c:[hljs.BE],r:0},{cN:"string",b:"'",e:"'",c:[hljs.BE],r:0},{cN:"paren",b:"[[({\\])}]",e:hljs.IMMEDIATE_RE,r:0}]}};
hljs.initHighlightingOnLoad();
</script>




</head>

<body>
<h1>Home Ranges</h1>

<h4>Up to <a href="../index.html">data sets</a></h4>

<h4>Forward to <a href="HRModels.html">models</a></h4>

<hr/>

<p>Source files available on <a href="https://github.com/camposfa/HomeRanges">Github</a></p>

<p><a href="mailto:camposfa@gmail.com">Contact me</a> if you are interested in the raw data</p>

<p><br></p>

<h2>Prepare workspace</h2>

<pre><code class="r">Sys.setenv(TZ=&#39;UTC&#39;)
x &lt;- list(&quot;adehabitatHR&quot;, 
          &quot;plyr&quot;, 
          &quot;lubridate&quot;, 
          &quot;scales&quot;, 
          &quot;reshape2&quot;,  
          &quot;ggplot2&quot;,
          &quot;RColorBrewer&quot;,
          &quot;rgdal&quot;,
          &quot;gridExtra&quot;,
          &quot;rgeos&quot;)
lapply(x, require, character.only = T)

source(&quot;BRBMethod.R&quot;)
</code></pre>

<p><br></p>

<h2>Load data and plot tracks</h2>

<pre><code class="r">all &lt;- read.csv(&quot;RangingWaypoints.csv&quot;)
hr_pts &lt;- subset(all, use_for_hr == TRUE)
da &lt;- as.POSIXct(as.character(hr_pts$timestamp))
hr_pts$group &lt;- factor(hr_pts$group)
ran &lt;- as.ltraj(xy = hr_pts[, c(&quot;x&quot;,&quot;y&quot;)], 
                date = da, 
                id = hr_pts$group, 
                infolocs = hr_pts[, c(3,6:12)])

plot(ran, final = FALSE, addpoints = FALSE)
</code></pre>

<p><img src="data:image/png;base64,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" alt="plot of chunk load_data"/> </p>

<p><br></p>

<h2>Check data and plot researcher contributions</h2>

<pre><code class="r"># Warning: next line is very slow!
# It may totally cripple your computer for an hour or more!

# temp &lt;- cutltraj(ran, &quot;dt &gt; 5400&quot;)
# plot(temp, addpoints=FALSE, final=FALSE)
# 
# temp_df &lt;- ld(temp)
# temp_df$velocity &lt;- (temp_df$dist / 1000) / (temp_df$dt / 3600)

# If all okay then clean up workspce
# rm(temp)
# rm(temp_df)
# gc()

# Convert to data frame
ran_df &lt;- ld(ran)
ran_df$date_of &lt;- as.Date(ran_df$date)

date_begin &lt;- min(ran_df$date_of)
date_end &lt;- max(ran_df$date_of)

# Plot contributions
temp &lt;- ddply(ran_df, .(id, observer, date_of), summarize, n_pts = length(x))
temp[temp$n_pts == 28, ]$n_pts &lt;- 26
temp[temp$n_pts == 27, ]$n_pts &lt;- 26

ggplot(temp, aes(x = date_of, 
                       y = (n_pts / 26), color = observer)) +
  geom_hline(aes(yintercept = 0), color = &quot;black&quot;) +
  geom_hline(aes(yintercept = 1), color = &quot;gray70&quot;, lty = 3) +
  geom_segment(aes(xend = date_of, yend = 0)) + 
  theme_bw() +
  scale_x_date(breaks = date_breaks(&quot;1 years&quot;), 
               labels = date_format(&quot;%Y&quot;),
               limits = c(as.Date(date_begin), 
                          as.Date(date_end))) +
  scale_y_continuous(limits = c(0, 1), breaks = 1, labels = &quot;13h&quot;) +
  theme(panel.border = element_blank(),
        panel.grid.major.y = element_blank(), 
        panel.grid.minor.y = element_blank(),
        axis.text.y = element_text(size = 7),
        legend.position = &quot;bottom&quot;) +
  scale_color_brewer(name = &quot;Observer&quot;, palette = &quot;Set3&quot;) +
  labs(x = &quot;Date&quot;, y = &quot;&quot;) +
  ggtitle(&quot;Observation Periods&quot;) +
  facet_grid(id ~ ., drop = TRUE)
</code></pre>

<p><img src="data:image/png;base64,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" alt="plot of chunk review_data"/> </p>

<p><br></p>

<h2>Number of points by group and observer</h2>

<pre><code class="r">ggplot(ran_df, aes(x = id, fill = observer)) + 
  geom_bar() + 
  scale_fill_brewer(name = &quot;Observer&quot;, palette = &quot;Set3&quot;) + 
  theme_bw() + 
  theme(legend.position = &quot;bottom&quot;) + 
  labs(x = &quot;Group&quot;, y = &quot;Number of Points&quot;) + 
  coord_flip()
</code></pre>

<p><img src="data:image/png;base64,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" alt="plot of chunk plot_contributions2"/> </p>

<pre><code class="r">
give.n &lt;- function(x){
  return(c(y = 500, label = length(x)))
}

ggplot(ran_df, aes(x = observer, fill = observer)) + 
  geom_bar() + 
  scale_fill_brewer(name = &quot;Observer&quot;, palette = &quot;Set3&quot;) + 
  theme_bw() + 
  theme(legend.position = &quot;bottom&quot;) + 
  stat_summary(aes(y = 500), fun.data = give.n, geom = &quot;text&quot;, color = &quot;black&quot;, size = 4) + 
  labs(x = &quot;Group&quot;, y = &quot;Number of Points&quot;)
</code></pre>

<p><img src="data:image/png;base64,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V86LiJx9fcLxfwJlLQuMfUEveq2t0cZHfm2KiJybHDlS9TSt4pWf/Mu6u/25iHBuzw9OPvLX14iIyFsnD204/oOiAeWzbx5wywuRFhhi/sDme276xKzWU0eeXhrdI/dm/mn+aczfmR75z94WGmJeduc9A7L3jvXRO/6nDDx27TKRc+kT177+y6JB58uuvPrEiwffERGZOfniCzYXvHBnd/7vP4v0XDpny7npIfPGwfUiIrJs7diDcn/f7kv6XpAHP+Xsv90Kzv37vttWPys/2PgRETn9/458/Hc/zgwxP3qm7DTLVn3wyNjpcyIi7/16rBU2V1m5+dtf08v/04v/+vXuL396ZfqUsV4O3KoOMUt23PkueXyutzvTy99/eN19/SvKtLx58sC6lStERFasXHfg5JtSpsW5rrj1ni9eU2PL2787pMnhrxYNKM9ucQ7OINbMmJCHj710ucgb22/Ye+il267LNB/Zu/57y372zatE5LoHB56/4ZH1j4pcr997va3FLoL+heTobW7X/xG5NhS6duHTONErj/U89udP7c7vt0efeVg+bmTPsFwT2X/lzNvLuq4QeXts82NH/+oGkR89Lz+cmL5C5OiTax87On3/NXP9Zidade2dF66V5yZ2ROShIW3+aW4V2fEbeSP60CqR5yZ2RMw53+UUqe3RH7u/9Myxy2TmyLb1E5851uPZEl02886yrstE3vn5/ROp63o8W+59df0379gq8rGP/vXH7K54Yc5+ue/out2f0uduMfYdkBs/uyrz4tgrl+y57OS+zavkvcQ/7f7yXZu/sb659S7Iss/17f2cvPboru/IwBc2bty78r1zKy5dJnLu3/d95+CKL2wsM80jyV2B1YbIyjv/fqXN1S/Ki5ENO9ft+74uYohs/4WcOHxmlYjxrRWRV88M/aVI5lzjp8X41oqIZFsc7+VvrHti9f7E9ZVaOsue38hT0cnlIkcnNj1uTm6c1fJFze4ScziDWDM9cPvlIiJyufv6s6fPiojMPPvk+u8t+9k3r8+dkLpqy0vbj720/dg3PywvL1/p/PHl8vTYXsvaa1nbeuWIZ0358w/VTOMs5/ZEeh7786d231oo9pWX9gQKZxNFZFlXfjguPTMjIp/9b3dlWpZ/6MZMS8vRPqilzv++ymkeusmzqup32e6dt15f89GNmeHjaz9z74uvHhIR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" alt="plot of chunk plot_contributions2"/> </p>

<p><br></p>

<h2>Calculate time intervals for each home range</h2>

<pre><code class="r">date_begin &lt;- floor_date(min(da), unit = &quot;year&quot;)
date_end &lt;- ceiling_date(max(da), unit = &quot;year&quot;) - days(1)

# monthly
start_vec &lt;- seq(date_begin, date_end, &quot;1 months&quot;)
end_vec &lt;- start_vec[-1] - days(1)
end_vec &lt;- c(end_vec, date_end)

mon_ints &lt;- data.frame(block_type = &quot;month&quot;, 
                       date_begin = start_vec, 
                       date_end = end_vec)

# eighth
start_vec1 &lt;- seq(date_begin, date_end, &quot;3 months&quot;)
start_vec2 &lt;- seq((date_begin + months(1) + days(15)), 
                  date_end, &quot;3 months&quot;)
start_vec &lt;- sort(c(start_vec1, start_vec2))

end_vec1 &lt;- start_vec1[-1] - days(1)
end_vec2 &lt;- start_vec2 - days(1)
end_vec &lt;- sort(c(end_vec1, end_vec2, date_end))

eig_ints &lt;- data.frame(block_type = &quot;eighth&quot;, 
                       date_begin = start_vec, 
                       date_end = end_vec)

# quarter
start_vec &lt;- seq(date_begin - months(2) + days(15), 
                 date_end, &quot;3 months&quot;)
end_vec &lt;- start_vec[-1] - days(1)
end_vec &lt;- c(end_vec, date_end)

qua_ints &lt;- data.frame(block_type = &quot;quarter&quot;, 
                       date_begin = start_vec, 
                       date_end = end_vec)

# half
start_vec &lt;- seq(date_begin - months(2) + days(15), 
                 date_end, &quot;6 months&quot;)
end_vec &lt;- start_vec[-c(1)] - days(1)
start_vec &lt;- start_vec[-length(start_vec)]

hal_ints &lt;- data.frame(block_type = &quot;half&quot;, 
                       date_begin = start_vec, 
                       date_end = end_vec)

# year
start_vec &lt;- seq(date_begin, date_end + days(1), &quot;1 year&quot;)
end_vec &lt;- end_vec &lt;- start_vec[-c(1)] - days(1)
start_vec &lt;- start_vec[-length(start_vec)]

yea_ints &lt;- data.frame(block_type = &quot;year&quot;, 
                       date_begin = start_vec, 
                       date_end = end_vec)

# Combine all scales
ob_ints &lt;- rbind(mon_ints, eig_ints, qua_ints, hal_ints, yea_ints)
ob_all &lt;- NULL

# Create scale entry for each group
for(i in 1:length(levels(ran_df$id)))
{
  temp &lt;- cbind(ob_ints, rep(levels(ran_df$id)[i], times = nrow(ob_ints)))
  names(temp)[4] &lt;- &quot;id&quot;
  ob_all &lt;- rbind(ob_all, temp)  
}
</code></pre>

<p><br></p>

<h2>Calculate number of locations for each home range</h2>

<pre><code class="r">ob_all$nb_reloc &lt;- 0

# rearrange
ob_all &lt;- ob_all[, c(1, 4, 5, 2, 3)]

# Warning: slow!!
for(i in 1:nrow(ob_all)){
  ob_all[i, ]$nb_reloc &lt;- 
    nrow(subset(ran_df,
                id == ob_all[i, ]$id &amp; 
                  date_of &gt;= as.Date(ob_all[i, ]$date_begin) &amp; 
                  date_of &lt;= as.Date(ob_all[i, ]$date_end)))
}
</code></pre>

<p><br></p>

<h2>Filter out periods with few locations</h2>

<pre><code class="r">base &lt;- 48
ob &lt;- subset(ob_all,
               (block_type == &quot;month&quot; &amp; nb_reloc &gt;= base * 2) |
               #(block_type == &quot;eighth&quot; &amp; nb_reloc &gt;= base * 2) |
               (block_type == &quot;quarter&quot; &amp; nb_reloc &gt;= base * 4) | 
               (block_type == &quot;half&quot; &amp; nb_reloc &gt;= base * 8) |
               (block_type == &quot;year&quot; &amp; nb_reloc &gt;= base * 16))

rownames(ob) &lt;- 1:nrow(ob)
ob$ints &lt;- new_interval(ob$date_begin, ob$date_end)
ob &lt;- subset(ob, select = -c(date_begin, date_end))
</code></pre>

<p><br></p>

<h2>Plot of seasonal ranges to be included in the study</h2>

<pre><code class="r">date_begin &lt;- min(int_start(ob$ints))
date_end &lt;- max(int_end(ob$ints))

temp &lt;- ddply(ran_df, .(id, date_of), summarize, n_pts = length(x))
temp[temp$n_pts == 28, ]$n_pts &lt;- 26
temp[temp$n_pts == 27, ]$n_pts &lt;- 26

p1 &lt;- ggplot(temp, aes(x = date_of, 
                       y = (n_pts / 26), color = id)) +
  geom_hline(aes(yintercept = 0), color = &quot;black&quot;) +
  geom_hline(aes(yintercept = 1), color = &quot;gray70&quot;, lty = 3) +
  geom_segment(aes(xend = date_of, yend = 0), alpha = 0.5) + 
  theme_bw() +
  scale_x_date(breaks = date_breaks(&quot;1 years&quot;), 
               labels = date_format(&quot;%Y&quot;),
               limits = c(as.Date(date_begin), 
                          as.Date(date_end))) +
  scale_y_continuous(limits = c(0, 1), breaks = 1, labels = &quot;13h&quot;) +
  theme(panel.border = element_blank(),
        panel.grid.major.y = element_blank(), 
        panel.grid.minor.y = element_blank(),
        axis.text.y = element_text(size = 7),
        legend.position = &quot;bottom&quot;) +
  scale_color_discrete(name = &quot;Group&quot;, guide = &quot;none&quot;) +
  labs(x = &quot;Date&quot;, y = &quot;&quot;) +
  ggtitle(&quot;Observation Periods&quot;) +
  facet_grid(id ~ ., drop = TRUE)


## Time Periods
p2 &lt;- ggplot(ob, aes(x = int_start(ints) + days(3),
                     y = factor(id, levels = rev(levels(id))),
                     color = id)) +
  geom_segment(aes(xend = int_end(ints) - days(3), 
                   yend = id), 
               size = 2) + 
  theme_bw() + 
  scale_color_discrete(guide = &quot;none&quot;) +
  theme(panel.border = element_rect(fill = NA, colour = &quot;grey50&quot;),
        axis.text.y = element_text(size = 8)) +
  scale_x_datetime(breaks = date_breaks(&quot;1 years&quot;), 
                   labels = date_format(&quot;%Y&quot;),
                   limits = c(date_begin, date_end)) +
  facet_grid(block_type ~ .) + 
  labs(x = &quot;Date&quot;, y = &quot;&quot;) +
  ggtitle(&quot;Included HR intervals&quot;)

grid.arrange(p1, p2)
</code></pre>

<p><img src="data:image/png;base64,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" alt="plot of chunk plot_times"/> </p>

<p><br>
<br></p>

<hr/>

<h1>Calculation of predictor variables</h1>

<p><br></p>

<h2>Calculate group size within HR intervals</h2>

<pre><code class="r"># Pull current census data from PACE database
# library(RODBC)
# ch &lt;- odbcConnect(dsn = &quot;PACE&quot;)
# group.q &lt;- &quot;SELECT
#     tblGroup.NameShort, 
#     qryCensusMonthly.DateOf, 
#     codesCensusMonthlyStatus.Status, 
#     codesSex.Sex, 
#     codesAgeClass.AgeClass, 
#     Sum(1) AS N 
#   FROM ((((qryCensusMonthly 
#     INNER JOIN codesCensusMonthlyStatus ON 
#       qryCensusMonthly.StatusID = codesCensusMonthlyStatus.ID)
#     INNER JOIN tblGroup ON 
#       qryCensusMonthly.GroupID = tblGroup.ID) 
#     INNER JOIN codesSex ON
#       qryCensusMonthly.Sex = codesSex.ID)
#     INNER JOIN codesAgeClass ON
#       qryCensusMonthly.AgeClassID = codesAgeClass.ID)
#   GROUP BY 
#     tblGroup.NameShort, 
#     qryCensusMonthly.DateOf, 
#     codesCensusMonthlyStatus.Status, 
#     codesSex.Sex, 
#     codesAgeClass.AgeClass&quot;
# groups &lt;- sqlQuery(ch, group.q)
# odbcCloseAll()
# detach(&quot;package:RODBC&quot;, unload=TRUE)
# 
# names(groups) &lt;- c(&quot;id&quot;, &quot;date_of&quot;, &quot;status&quot;, &quot;sex&quot;, &quot;age&quot;, &quot;n&quot;)
# write.csv(groups, &quot;groups_query.csv&quot;, row.names = FALSE)

# Or use data pulled 2013-09-23
groups &lt;- read.csv(&quot;groups_query.csv&quot;)

# Include only alive or immigrated animals
tcomp &lt;- subset(groups, status == &quot;Alive&quot; | status == &quot;Immigrated&quot;)

# Include only sexually mature animals
comp &lt;- subset(tcomp, age == &quot;Adult&quot; | age == &quot;SubAdult&quot;)

# Inlcude only study group
comp &lt;- subset(comp, id %in% c(&quot;AD&quot;, &quot;BH&quot;, &quot;CP&quot;, &quot;EX&quot;, &quot;GN&quot;, &quot;LV&quot;, &quot;RM&quot;))

comp$id &lt;- factor(comp$id)
comp$status &lt;- factor(comp$status)
comp$sex &lt;- factor(comp$sex)
comp$age &lt;- factor(comp$age)
comp$date_of &lt;- as.Date(comp$date_of)

# Round to set census date
comp$census_date &lt;- round_date(comp$date_of, unit = &quot;month&quot;)

# Convert to age/sex
comp$age_sex &lt;- paste(comp$age, &quot;_&quot;, comp$sex, sep = &quot;&quot;)

# Drop unnecessary columns
comp &lt;- comp[, c(1, 2, 7, 8, 6)]

# Reshape
comp_wide &lt;- dcast(comp, id + date_of ~ age_sex, 
                   value.var = &quot;n&quot;, 
                   fun.aggregate = sum, 
                   drop = TRUE, 
                   fill = 0)

# Empty data frame for final composition data
final_comps &lt;- NULL

# Define limits, pull group comp data for each group, and interpolate values
for (i in 1:length(levels(comp_wide$id)))
{
  # Make temporary subsets
  temp_ob &lt;- subset(ob, id == levels(comp_wide$id)[i])
  temp_comp &lt;- subset(comp_wide, id == levels(comp_wide$id)[i])

  # Find date limits
  date_begin &lt;- floor_date(min(int_start(temp_ob$ints)), unit = &quot;month&quot;)
  date_end &lt;- ceiling_date(max(int_end(temp_ob$ints)), unit = &quot;month&quot;)  

  # Generate even sequence of first-of-month dates
  date_seq &lt;- as.Date(seq(date_begin, date_end, &quot;days&quot;))

  # Create daily data frame for composition values
  comp_frame &lt;- data.frame(id = levels(comp_wide$id)[i],
                           census_date = date_seq,
                           Adult_F = NA,
                           Adult_M = NA,
                           SubAdult_F = NA,
                           SubAdult_M = NA)

  # Fill in census dates with actual information
  comp_frame$Adult_F &lt;- temp_comp[match(comp_frame$census_date, 
                                        temp_comp$date_of), ]$Adult_F
  comp_frame$Adult_M &lt;- temp_comp[match(comp_frame$census_date, 
                                        temp_comp$date_of), ]$Adult_M
  comp_frame$SubAdult_F &lt;- temp_comp[match(comp_frame$census_date, 
                                        temp_comp$date_of), ]$SubAdult_F
  comp_frame$SubAdult_M &lt;- temp_comp[match(comp_frame$census_date, 
                                        temp_comp$date_of), ]$SubAdult_M

  # Interpolate between census dates for each day
  comp_frame$s_Adult_F &lt;- approx(x = comp_frame$census_date,
                                 y = comp_frame$Adult_F,
                                 n = nrow(comp_frame),
                                 method = &quot;constant&quot;)$y

  comp_frame$s_Adult_M &lt;- approx(x = comp_frame$census_date,
                                 y = comp_frame$Adult_M,
                                 n = nrow(comp_frame),
                                 method = &quot;constant&quot;)$y

  comp_frame$s_SubAdult_F &lt;- approx(x = comp_frame$census_date,
                                 y = comp_frame$SubAdult_F,
                                 n = nrow(comp_frame),
                                 method = &quot;constant&quot;)$y

  comp_frame$s_SubAdult_M &lt;- approx(x = comp_frame$census_date,
                                 y = comp_frame$SubAdult_M,
                                 n = nrow(comp_frame),
                                 method = &quot;constant&quot;)$y

  comp_frame &lt;- comp_frame[, c(1, 2, 7:10)]

  final_comps &lt;- rbind(final_comps, comp_frame)
}

# Fix names
names(final_comps) &lt;- c(&quot;id&quot;, &quot;date_of&quot;, &quot;n_af&quot;, &quot;n_am&quot;, &quot;n_saf&quot;, &quot;n_sam&quot;)
final_comps$date_of &lt;- as.POSIXct(final_comps$date_of)

# Calculate mean adult mass values for each HR interval
ob$adult_mass &lt;- 0
for(i in 1:nrow(ob)){
  g1 &lt;- mean(final_comps[which(final_comps$date_of %within% ob[i,]$ints &amp; 
                                 final_comps$id==ob[i, ]$id), ]$n_af)
  g2 &lt;- mean(final_comps[which(final_comps$date_of %within% ob[i,]$ints &amp; 
                                 final_comps$id==ob[i, ]$id), ]$n_am)
  g3 &lt;- mean(final_comps[which(final_comps$date_of %within% ob[i,]$ints &amp; 
                                 final_comps$id==ob[i, ]$id), ]$n_sam)
  g4 &lt;- mean(final_comps[which(final_comps$date_of %within% ob[i,]$ints &amp; 
                                 final_comps$id==ob[i, ]$id), ]$n_saf)

  ob[i, ]$adult_mass &lt;- ((g1 + g3 + g4) * 2.54) + (g2 *3.68)
}

# Plot mass over time for each group
final_comps$adult_mass &lt;- ((final_comps$n_af + 
                              final_comps$n_saf + 
                              final_comps$n_sam) * 2.54) + 
  (final_comps$n_am *3.68)

ggplot(final_comps, aes(x = date_of, y = adult_mass, color = id)) + 
  geom_line(size = 1) + 
  scale_color_brewer(name = &quot;Observer&quot;, palette = &quot;Set1&quot;) +
  labs(x = &quot;Date&quot;, y = &quot;Adult mass (kg)&quot;) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  facet_grid(. ~ id)
</code></pre>

<p><img src="data:image/png;base64,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" alt="plot of chunk calculate_group_size"/> </p>

<p><br></p>

<h2>Calculate available fruit biomass within HR intervals</h2>

<p>Full details here: <a href="http://people.ucalgary.ca/%7Efacampos/data/fruit/">http://people.ucalgary.ca/~facampos/data/fruit/</a></p>

<pre><code class="r"># Load data
biomass &lt;- read.csv(&quot;../Transects/biomass_monthly.csv&quot;)

# Add one additional january to the end for a complete year
biomass &lt;- rbind(biomass, biomass[1, ])

# Create actual dates
biomass$month_num &lt;- match(biomass$month_of, month.abb)
biomass$date_of &lt;- ymd(paste(&quot;2011&quot;, biomass$month_num, &quot;1&quot;, sep = &quot;-&quot;))
biomass$day_of_year &lt;- yday(biomass$date_of)

# Change last day_of_year to 366 and rearrange
biomass[13, ]$day_of_year &lt;- 366
biomass &lt;- biomass[, c(1, 4, 5, 2)]

# Spline
biomass_daily &lt;- data.frame(day_of_year = seq(1:366))
biomass_daily$spline &lt;- spline(x = biomass$day_of_year, 
                               y = biomass$combined_monthly_kg, n = 366)$y

# Spline plot
plot(spline(x = biomass$day_of_year, 
            y = biomass$combined_monthly_kg, n = 366))
points(x = biomass$day_of_year, 
       y = biomass$combined_monthly_kg, col = &quot;red&quot;, pch = 16)
</code></pre>

<p><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA2AAAAGwCAMAAAD47faQAAAAt1BMVEX9/v0AAAAAAEYAAHMARkYARnMARpoAdJoAdL1GAABGAEZGAHNGRgBGRnNGRppGdHNGdL1Gm5pGm95zAABzAEZzAHNzRgBzRkZzRppzdABzdEZzdHNzdL1zvt5zvv2aRgCaRkaaRnOadACadJqam0aam3Oam72am96avpqa372a396a3/29dAC9dEa9dHO935q9/r29/v3em0be35re/r3e/t7e/v39vnP935r9/r39/t79/v3/AACMSzFkAAAAPXRSTlP//////////////////////////////////////////////////////////////////////////////wD/twm+oAAAAAlwSFlzAAALEgAACxIB0t1+/AAAHlRJREFUeJztnYti47h5hUPvZmrttJPWstNttrVmM03aRspmrGxGF/r9n6vEjaIkkMSVwA+cz961x6QgAMLhfyEI/KYFAETjN6krAEDJQGAARAQCAyAiEBgAEYHAAIgIBAZARCAwACICgQEQEQgMgIgIgZ3Wj4nrAUCRKAt2aJqHbdKaAFAgAxfxvGma13Q1AaBAlMCOK2bBTi9vSWsDQGGoGOzDt8QVAaBEkEUEICJcYMcftshyABABJrDz5rU9PXcag58IQFiYwPaN4jvkOAAICbdgn7ft/qmFBQMgNCIGWzWdtnaIwQAIDLKIAEQEAgMgIhAYABGBwACICAQGQESGAjutGzwWBkBIYMEAiAgEBkBE1OMqmCoFQASkBds9df/bP2KyFABBkRaMP8l8evmKJ5oBCIkQ2HnDLdiHv3+CBQMgICrJsesisMfTGoveABASZBEBiIiMwf6H/f/8MyIwAIIyiMH2eB4MgMBIF/G8+d3qKW1NACiQPgbbQV8ABIcJTM3jwEQOAAKDLCIAEbkR2AE3wgAICAQGQEQgMAAiAoEBEBEIDICIQGAARAQCAyAiuA8GQETUmhxYrw2ACCgLhg0uAYjAwEU8b5oGIRgAIVECO66YBTth0RsAQqJiMKzXBkAE5rOInW3DoywAuDH7PNh5I+IyrEkKgD2zFkyFZQjPALBnVmCwYAC4IwV2GI+zpAOJGAwAe2QW8dnlJnMDADASmFOANVM0ABVgJLB2P75om7gFrdMgBAaAgcBm0/Rs4V8IDAANZhZsHCGs3eNAYIbeJwAVYBGDaSMxmabff/8RFgyAO2xcRO2trtOax2f7e/8RAgMAWUQAIuIbg7kXDUAFmAlsYiYH0vRAopJb7+/vqauSD2Yu4vjmzEjTAwHPG7OvdwY+fIlvDKZJ0xsWDUqil5cUGD59iZmLOL79HtL0oG3bZvAlLBhugwoMXcTxGAxpeiDt1yAGE/9KXa0cQBYR+NLL6+YvGAEtBAa84VK6sVe6v9WJmcDYmoj6iRzuRYMy0Fsr2DCJkcBYHr4LsywVhs6tgVFbxf+GMeA72de9aFAEjZSSzZGagAUDPkzZKdiwFjEY8GLaSsGGIYsIfJixUerWc814T/Z1LhqQZ1ZAcBINkxxuy7Y5vAZQYt4FhJOIBy6BKyb2qXob5r1sm3PRgDhm1qlp6x4JhgJDDAZuMZNO7U4iYjDghqnzV7mTiBgMOGFumep2EhGDASfMZQOBTTD/wKVz0YAyNo5f1c+tYCYHcMAqdVG1CbMT2GF0dSn7ogFhrDQDgY0DgQENdplBCGwcCAzcY3tvq+a9diAwYI21SarYhkFgwBoIzBwIDNhi7/FVPF8KAgOWuJijeudL4T4YsMTJ36vWSTQQ2OQm6Gz7opFjVfZnBUBgNphZML75w/5Rc4Lc/KE93C+JU2V/lo9jzh0xmJbZdRHVH7F9USW4m6I6JWYksIl1EWHBKsNZYJU6iWYuIl8XUechTs20r7A3KwACswNZRGCD+6wnCEwHBAaG+KikzhmJxi7ih1/1C3MgTV8TXmaoShtmmuQ4fvqmyWMgyVEZEJgtpmn6TmCmafp+r95wtQR54PexQmD3DC0Y0vS146uQGi+6Fml6/fZFSNPXg78Jqk9iyCICY7wFVqGTCIEBU/wDawjslvn9wY6r5mGLuYgVEEAdENgtauHR0QctWZKDTVWEwIonhDrqyy5bzKbXIg7tHiGw4glifqqzYRbPg2mRafr99x8hsNIJYXwgsGvm16Y/rbn49vcHq+rHCgji3EFg1yCLCCSBpIEY7AoIDEiC2Z66JGay6M3LV2xfBEIJrDInERYMGBEswQ6BDYHAACecLCCwIfNrcjgXDSgRUBaIwQbMrirlXjSgRFC7U5PELGZyTMzncCkakCKgKKpyEi1mcmhX9nUvGhAiqM2BwC7Mr03vXDSgQ1hJQGAXkEUEbXBJIAbrmX8ezLloQIfgNqceiZklOfRLIvoVDQgRWBAVOYm+z4O5Fw3IENzeQGAK6SLuR58Hcy8aUCG8HCAwhRIYYrCKiSAHxGASxGCgJnsTHsRgYIY4C9XUYsMQg4Fp4tivaqyi95oczkUDGkBgXmAmB5gGAvMCAgMzxImWEINx5ndXcS4akCCeEOqQGB64BFPEc+UqcRLxwCWYAgLzBBYMTAGBeeIdgx1X2OGyZBCD+eGbRcQezUVThwhi4iswFZhh+6ISiezG1SBf0yeaX9v9g27GLyxYycQVWBVRmMVs+uP9FmDt1DSq4vuufCAwbwyziMxMaYyUT9GAAFGdOAisdxG5mbKc61t+3xVP7BgJMZjBXMTjqnncw0UskQUsTPkS807Tf97yJX+Pn5DkKI34AqvASTQR2PGHLVsZUZtFZOl59jjmIE3fKIJWFCwOBBYAA4GxFAfLI2qTHLBgBRP9IgmBMYHte5OkS3N0MdgTYrASWcIHKd/PMbFgzEg9IU1fGRVYlyUwisFWbKLvThuDuRcN8mYhgZVuw7BkANCzjMCKt5MQGBhhEdsCgXH2H77tm+ZVc8LE7nxF91vxLOS6QWCM0/O2+9ZP9hVPOzsUDXJmsYGPGKzld5E7G6YX2PjC9WV3XOEsaFnKlpihi9g8bA9aF9G9aJAzywmscCcRSQ6gZTG7AoFFKhpkzPv7+1JvBYG1U1lE96JBvry/L6kwxGBTWUTnokG+LCqwsvHPIroWDfJlYYGVbMOQRQQaltVXW/BgQZID3LGwRYHAohQNcmXpAQ+ByWcusYVsHSw+4KuPwU7P28MjXxkgYNEgV4q2KEtjmkUU3+KPp7WR1PAZUWV5i1KuDTNb2ffztvsepOnH1piyKRpkSoLBXrDNNIvBOm11mrp6LoVtGTadty+0x0onxWCvXmC3HFfMgs3sKVtoj5UOBBYUM4EdrrKIp7XR+lKF9ljpJBnslcdgo89U+hQNMqXcwZ4C0yzi4G9TK2lbFA3AgFJlbXijeZDfmFxJ26JokCWJBnqxUZj9TI7plbTNiwY5kmqg1y2wqxjMeCXtIvurdCCwwLjEYIYraRfZX6WTbKAjBgtdNMiSdAO9TImZWbA1ZtPXQcJBXqiT6DSTQ9x3nnvAucDemqcZkroy1qQc5BCY4tDwyfTnDeYiXiNV1X/RExkEFhwzgbGZvY3MGp5+7LOHv7zxlMeI+1hgb01xLa6ByFJXzIKkg5xWV5li9rgK3+Bhr92jeSPMmCZpX2J3jdHo5cW+SC2AVuYgT4lFml4l64+rV2bRhKLUHzUz6+v5qC5BV3NN1weUlhhMLa/U7x8DewvGbNauM1vHT99aWDCG9AXb25iL/5sLjEZXpI6CUr9/FBxisJc3NplD2azxFH5xfTWC8g61l18pMBKX5tQDPPX7R8Ehi9iZrwObKjW3MEdxfaVl4BnqT+AGrKHQG6kHeOr3j4LLfbAdH06zC98U11caenlNnUMmm5i6kqnfPwYGAju9fJ2YyXGV8rApugAGqcP507IfPdlXkCRua3JcuE552BRNH/NbXb0SMyYLB41OxtUUB4HdpumHKQ9eJNmZQnbYGCYCbmIOAqN0T8MQiyzio/r9ymaNpzxSf1pxsfT78rdhEFgU7O+D3dqs0ZRH6k8rKvYmSQoyXpX8yMLnqFVg1zM5kKZ3M0gm+ZBk5GC/2npjsB23YEpRSNO7hVT8BZn2SiYCKy+XaZKmX8ukBR64lLh6e02+4ycXgeVSj2D4pundiyaLR74iYxuWifIhMP4E2NNO2bMJ81ZUP13wyrjnasOyqRQEJtL0nZxkml5kGB2KJopfvj3TREdGwzobqQfCXmAsmciyiP2TYGML15fVURLfO8Z5JuszElhpuFkwhmZylFXRJPHXR5Y2LCuB5Xf98cFMYMePb5elEU9rprD9bE6xpG4SBJmOkWWiI6NBnZXY/XEQWKCi6RFoQmF+iY6sqgOBBSqaHMGmE+Zmw/Ia0nnVxhsIzJSAE+IzG0O5VScne+oNBGZIyPRfZk5iZgLLq3N8gcDMCJv8y8xJzGxAZyd4H5ymSpnprZg+asUs75DDMCcblk1FFBBYdQITzykFbFBGd8PyG8751cgDCMyACKuH5uMkZjics7OpHkBg80RZ/zobJzFDgZWEkcBO6+unK+sSGNNBhCdts7Fheej8mhzr5IahBTs0zWBP5qoEFi1cysN0ZDmU8+iaIJi7iGxlqblNLW2KJkK86e9ZOIl5DuU8a+WEocCOK2bBNHsUuRdNgqirreXgJOY5lPOslROGMZhu7z3PoikQeb3QDMZRBlXQkd60h8IpixikaALEXi00vZOYxWqIWnKtly1OAjsYLTJFvoPir3ed2knM1H61OdfMEheBiScufYvOniWe7k88jvIdxvnWzBIngZnlOoj3zyKzmRI7ifkO43xrZomFwE5rtZrvzmhmPe3+WWh1msROYr6RTr41s8PNRSw/BltsNm7KS3Xegzjv2plilqa3uv9lWHTWLLe6WsJV3PJ2w/KunTFGAuPbFYUuOmeWfJpE3ApIQd5DOO/aGWN4o7muzR8WXR003UDKewjnXTtjcKP5joU3o0yWSMz3JrMg79qZ4i2w42rMuhHtnsW3U06USCzEQuSOmcD2oy6iWkj7cD9bkeant7D94m/ZQmBaSrBhZjHY8/bweNnhcki/BcR9opFk5yxuv9pUTmL+Asu/hgaYpunF9/0JpVmwJkVkksZJzN4+1COw8+dt9338qMsijmcYKfYNH+lVuGvZy6smgbE1Ag5NY7n0KMG+SWK/2hRDicTgJXARmAVp+gHpVitcXNgkBFaCwsIITOs9kuublLtPLj3gSQiMRCVnMBPYedN8+FW7VWw5m6AnyM8P371dtMNyv8ksqEZg583T8dM3TaKwZQpjG6IPLVijCFfLBUiRn796+yWNJ5GRS6Sak5im6TuBjc2pP60//J28i5jWfrULp+qpjFxqV2kNFhZsP7q01HGlm+RBqW8S2y9RBQjsHvISM47BmsZ26TZCPZMyvdHXYbnRRMeBp3MlGANp+gzcw74ay3QaoVFLqKojQGA5uIeqIhDYDYSqOoJZkmOtm+frWXQuZGK/2uWcREqjNocLnxeGFux6d5UB5O+DZWO/2sWcxFyaawapyt5j7iKO7K5y3oxNUSTRLzmkNy4sYlsoGTBqtb3HUGATu6uctDM85ovOgXzcQ8EiTiKtIUurtvcYxmBl7q6Sk3soWMJJpDVkadX2Hrss4sFmB77suyU3+8WIP57o3AQT0KrtHfUKrJHhV17VjO4kErQIuX1GVlQrsPzcQ0FsJ5GewOjVeEitAsvRPRREHk/0hiu9Gg+pU2B5uoeCuE4itQishcBci05Iru6hIKaTSHKwErwoXDAQ2ODuVxkCy9c9FERUAUmBEa21wEhgX0vavihn91AQ0UmkOVRp1lpg4iLuRqcb+hSdiLzdQ0E0J5Gos1W6wEragC9391AQaUSRHagkLwsCuyRHyKJTkL97KIjkJJIVGGGJmQmsjCUDqMirjeQkLrquTljoXhqMBCYeSRlf9Map6KV5f39Pt3KvNRFG1CJT9SNRuMBEDGYbieXVIe8MIvarjaIGuoOUct1rsWANFxgVebUx/Dm6g7QlbnsnKCQG62ovBJa6IhaEtmFEU/Q9RGtfQxZRJDeYh0iJwAEjafvV0q1/+XMR+ztfmdTHmLBOItUBqqBa/9IFpuRF0cFoeGomUFl0U/QCCMy26CWgLK9WZWaClEQ2hukhGkOWLDDi8mrVvYUAUL3+D6HZhnIFRl9eUmABqk/eQWRAYHZFR6UpQV6tjMG8W1CAg9hCYLZFR0Qt10tdXm0gbdAcmneQjMIKvA/WDEhUhXCEuMNQhIPIoHihMJuLOLG7ynE19jBmiq6QslL/FYC/OspwEBnFCmxid5XzRniNmh3Sl++Kyz3lIqyXwFsfFIelHootMXcR9burqCn2mqn2y3aFsl0FZDZu8LRhxTiILUlLbCiw0d1VMrFgg/lQhcmr9bRh5TiIHHJtMYzBxmfSyx34EsZgN7aL2icwj0+ioyT71VJ0EolnEYfiKtB2SdxzNjSnOY9TqsD2Y1bKo2hv7sRVqLxaD50U5iCWKrDT8/bw2O61uXoRnS2d5LgWV7m2S+FowwpzEFuCN5vNBPbyJr7vT2BJDraiwIICk4/+12G7FE42rDT7xaBmw4wEdv687b6PH3U7NHNh7R4HAos3jYKXKlevqUhcHAcbVp79agsVWNtp69A0T5oTZJp+//29+sJ2Q+8U9gKrR1wcaxtWWoJDUKbAJjitue729xmQcN1wFXGp5aFqEhfH0obJVepi1igJxD763NP0zZW4+BfXV4iyqWGVzlGGvjxo2TADgclbycun6aW0blLxdYqL019qDE4lt0ydMcUJrGPHFx4dn1LvUvTMi3t1NU1l6YwJjG1YE261gewoUGCLLp3d26mh0YK4BP1VZ/a0cAtSZQep4WCWph9fOnvCf3SZeHAXcEFcNxhIzMKTpAklG2bmIvKls/UeohCfQ9F3p+vFZVdIBczNXTE0cpQpT2BTnJ61T2JadQHEZcEgKh0/SGYAulCXwFyL7k+7ERe8wlkuEhs9UHb/ERohJgI7/rAdXzPAuWh+ik5cdu9SJ8Mk682fypdXS8mGGQiMzYZifqDmoWWfoiEuL5rB0nS3edfUdYtPUQLb95+g3Z3myaIhLm9uotaK5EXpOQETC/Z52+6ftMtuuBY92C8Z4nLmNjFUjbzavJ4UmLzjaBSDrdjulrtwMVitE+KDc+Ma1tSX2TiJM1vgJMkiVjshPgaXEKwqMhFY0+QrMI+iAcjhosKrEEJg+w/f9rplR6ffffxQufPkwGIkt2HKPfeOwViSvvvWLhkw9f5WZwNgR2KBGd51NJ1N39kwCAzkRNJUvfFNfUMXsXnYHgK6iAD4kzBVb35bJP1cRAAcSeYk9vPUDE6dPgyBgXxJ5CRayCtVFhGAEKRwEq3khSwiIM3iTuJgeprhC6YPI4sIcmZpJ9F+zieyiIAyyzqJlu4hf8n0YSQ5QN4s6CQ6yAsCA8RZzEl0kpe5i2j/vCUEBpZgISfx8tSd7esmmd+Az7loAIKwiJPoaL/Ms4hjG/C5Fw1AEBZwEp3lZSiwiQ343IsGIAyxnUQPeZnGYOMb8LkXDUAgojqJ1reWb14+fRhZRJA/MZ1E3+WEzAR2GM8iHldjxyAwsBDxnEQv95AXMH24zyKOnSD3aNat6QaBgaWIZMO85WWeRRw7QR3SnAKBgaWIsuFFAHkZ32gezW/AgoEcCO8keiY3+mKmD8/P5JA78CEGA0lpAq9VFmqtZN8YzL1oAEIyswCobWkh3ENe0PTh2RjMvWgAghJwOdtg8vKPwZCmB5mgdjzwJqC8TC3YaJyFJAfIBq4vb1kESm70xU0fnp3JoUnTNwrPqgFgRwBhGC8oal6nSWYFBgsG8kH6dp4FBN1nzUxg5033lvr995CmB/ngOW+w35I3ZI0mkY+rbFiSYx92j2YAwtNHUG4v9bWAmlKnDw/T9HjgEuSPqw27BF+h6zMJLBgghpMZUpuGh0/NecdgzkUDEAcxL9FCKnISSJTMt3eafi1z8vdZDggMpEGaMNPV4+U2y3FuLHk/0SzcR4eiAYiFxVQMflrETcMNBHZ6+To+k2NiJjAEBlLRz3aaFJnKG85ss+xXk+nDWJMD0GRuSsZFXHFir/59pg9DYIAo/VK893ZsKK648rLKIlou7AuBgaTciOiKdiF54T4YKJhbMd1+LTElHTM5QNGMSWyp5z3MXMQdt2DY/AEQ5N6OLSUu/u7Th3mafvxesk/RACzGbQi24DtPH0YWEQAfIDAAIgKBARARCAyAiEBgAETEeAO+iaUR3YoGoAIgMAAiAoEBEJGYAgMAxBPYhPTCFZWOEhpRQhtoNwICG6WERpTQBtqN8EnTj0O6SxQlNKKENtBuBAQ2SgmNKKENtBsBgY1SQiNKaAPtRkBgo5TQiBLaQLsR8onmH9liAeefXTaS1UG6SxQlNKKENtBuhMoirh7b3YPLTugAgHF6F/HQvKasBwBFAgsGQETixGAAAA5f9OY/+3/+AokBEBBuwQ5iUd/zBnEYAEGRMdiBzwuGvAAIS5wbzQAADgQGQEQuu6t8+HVsoz0AgCP97irHT98Otrug6zmtrbdTz4rjx7e+ETTbclzxeJp0G1ha4DvqH0Q72F2lE5jt7ip6zptX620kcuLAPlfZCJptYXv+Hn/Ykm4Dv8xdak+0Ee21BbPdH0wPkyk3AjTZPfxvV3nZCJptObCRuHsl3QbOpfZ0GzHc4TKMDe6UOr5vOgXYBykbQbctl8rTbQOzWeQbET6LyCI5mn0hYQKTjSDbFrZlKfU2HFcPW/KNiCAwuhcbSQEW7LR+aqm3oS3DDF/N5LDcgE8PXXdZcqQeg3XXfjYnh3YbOAUEkjKLuA43S4p5JzQTPhL2QcpG0GyL0BftNijfkHYj2utN0ANB9paFhPx9sL2cWEq5DbwV7AFF2o243gQdABAY5SKGi8EAAD2Y7AtARCAwACLClwx4+QoXEYAYwIIBEBEIDICIcBdxLffqg4sIQFhgwQCICAQGQESGz4ORnOsFQM70TzS3LdHZlABkzHCyb9ApvwCA3kXkxgsWDIDAXE32RaIegLAgiwhARCAwACKiYrAP3/bYXQWA0MgY7HnLlu4huaoIABnTp+k7GwaBARAY5SI2D9tDrS5id2HRXFv2umVKdq/yBaZlH/p9Ddny6qOcN43jqigeNbItb7IFgktX3pRw/ny/qOFMTcoASY6R0cSWurxnZzkgjj/85cuv4v795PB0dx48amRbXmCBzdWkDCoVmNgb5/Ty32xpMDEqjp/+qDb9YXcDu4G2u1+Lb/cTO4cvTcpPO3/+U9M8daU99ZsGyW13xI/jp398YULtzv7t71/lKV3RF/nycrr/PcgBKA7KSojzj//ye3l/8uqV3jXq3vL+NX15N/0hWyAYvkAcF2ez3//28T9kCcPadgI7bz6wdv3232VLZU00vVwSdQqMTQrrPtXT+sO3w3dvUmArsZy7+MDZGaeXr/wCO9jAescjVTacd/zs8+axG8aPfPHZ561ag1a+nr/Df/HhzM7uxp845dD9o3cIRTmX6704KCshzpcLifYHQ9SIWaPu7LvXXMq77g/ZAlmPqxeIBqxUOy6/DdvZCYwtDchOVpcSWRPVy4VSqcDEMudsQePuk5cD6uObGpViuzQWmd4GRsyB2r3KUcsWnu08H/afKvDlTf2mFlLfscs8O1s6WOyUH7/9VTlMspyLwPhBWQl5ws3BIDUSZWpe05d33R+DFrTC4ZMvGDTgqh/ZSwe1PX/+5yfxfgNnkddE08slUafAmPP0IAehGk1qQLFZYw98Ow+2i93N6/46eAF3e4bDeSd8MF60+tGev/y6fuXDmQ9ddsr58//9qPw8Wc5FQ/ygrIQ8/+ZgmBpx303zmqvyLv3Rt0DWo3/BoAG3AhvW9rz5t+539q4DgfGaaHq5JCoVWMsXP2cD6s6CCcPBB+DuJx4cDB2yV3Yd19oLZg6lFORevN2Pw+P5S+eHyeu/OmX/U3/NvrNg/KCyXuL8m4NBajRlwUR51/3hYsGG7ezO3j9dWzBZE9XLhVKnwNh4YwJbP6rAoR8YMqbg23l8+sdt7mv3qAaPjF6uL+XdxVgWrd7h+S9f2ObyIoKRp1xds29jMHHw8tfun7cHQ9SIiYXlIW5fcynvuj9uYrDhCy5VvRXYoLbSTl7FYKImml4uiToFJn2n0/MfBllEOaBkRm/3KvMA16/7Sb6gz79dRtq+4Xk2UbT6IRN55w0/Jk85/3yJ6mUS7qIhflBWQpyvaqYOBqnRdRZxoJefLl0y7A/ZAlnHwQsuDWBe4ea7v10ENqgtO1s4nP/UO8S8JrpeLolKBSaY2tJNfx/MnvOX+3KO/zrxgpGDv7zNvtKjRnHQ1papSzRmwZqkAwIbQzuTIwh7ZiJWPIx66Cug/vCHB22dzn9Wr0zJXa0nuW8nW/ql+1U0pg6qFhgAsYHAAIgIBAZARCAwwshJhl1kI/N8LOhhyZkq5qnTAAKjC7+X+8jvNfM7VeLH/qmSeeo0gMBooOa23/39aq6F/FnHPHUaQGA0UHPbr6ZJtXwtS6Y97hv+UWTDd691zFOnAQRGg8FsjuFfV/xWE3/uSv4QN/BqmKdOAwiMBnqB8XvlTFWXH0JgNcxTpwEERoOLwK5dROYQ/siVJX8wgdUxT50GEBgNdBaMxWTyCRNmvtQT+p3kqpinTgMIjAZaF3EvJvldVs3gP17e6pinTgMIrDT4JOUa5qnTAAIrjFCP2YAwQGAARAQCAyAi/w/nrOJx2K7F6gAAAABJRU5ErkJggg==" alt="plot of chunk calculate_fruit"/> </p>

<pre><code class="r">
# Extend over complete range of study dates
start_date &lt;- as.Date(min(int_start(ob$ints)))
end_date &lt;- as.Date(max(int_end(ob$ints)))
biomass_dates &lt;- data.frame(date_of = seq(start_date, end_date, by = 1))
biomass_dates$day_of_year &lt;- yday(biomass_dates$date_of)
biomass_dates &lt;- merge(biomass_dates, biomass_daily, 
                       by.x = &quot;day_of_year&quot;, 
                       by.y = &quot;day_of_year&quot;)[, c(2,1,3)]
biomass_dates &lt;- biomass_dates[with(biomass_dates, order(date_of)), ]

biomass_daily$date_of &lt;- as.POSIXct(as.Date(biomass_daily$day_of_year - 1, origin = &quot;2011-01-01&quot;))
biomass[13, ]$date_of &lt;- biomass[13, ]$date_of + years(1)


# Plot complete set
ggplot() + 
  geom_area(data = biomass_dates, 
            aes(x = as.Date(date_of), y = spline), 
            alpha = 0.5) + 
  geom_point(data = subset(biomass_dates, day(date_of) == 1),
             aes(x = as.Date(date_of), y = spline),
             color = &quot;red&quot;) +
  scale_x_date(breaks=&quot;3 months&quot;, labels = date_format(&quot;%b-%y&quot;)) + 
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(x = &quot;Date&quot;, y = &quot;Available fruit biomass (kg / ha)&quot;)
</code></pre>

<p><img src="data:image/png;base64,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" alt="plot of chunk calculate_fruit"/> </p>

<pre><code class="r">
biomass_dates$date_of &lt;- ymd(as.character(biomass_dates$date_of))

# Calculate mean fruit biomass values for each HR interval
ob$mean_fruit &lt;- 0
for(i in 1:nrow(ob)){
  ob[i, ]$mean_fruit &lt;- mean(biomass_dates[which(biomass_dates$date_of %within% 
                                                   ob$ints[i]), ]$spline)
}
</code></pre>

<p><br></p>

<h2>Calculate weather data within HR intervals</h2>

<p>Full details here: <a href="http://people.ucalgary.ca/%7Efacampos/data/weather/">http://people.ucalgary.ca/~facampos/data/weather/</a></p>

<pre><code class="r">wea &lt;- read.csv(&quot;../Weather/filledfiltered_weather.csv&quot;)
wea$date_of &lt;- ymd(as.character(wea$date_of))

ob$mean_tmax &lt;- 0
ob$mean_tmin &lt;- 0
ob$mean_rainfall &lt;- 0

# get mean max temperature for each HR interval
for(i in 1:nrow(ob)){
  ob[i, ]$mean_tmax &lt;- mean(wea[which(wea$date_of %within% 
                                       ob$ints[i]), ]$tmax, na.rm = TRUE)
  ob[i, ]$mean_tmin &lt;- mean(wea[which(wea$date_of %within% 
                                       ob$ints[i]), ]$tmin, na.rm = TRUE)
  ob[i, ]$mean_rainfall &lt;- mean(wea[which(wea$date_of %within% 
                                           ob$ints[i]), ]$rain, na.rm = TRUE)
}
</code></pre>

<p><br></p>

<h2>Load habitat maps and view</h2>

<pre><code class="r">lc &lt;- readGDAL(fname = &quot;C:/Users/Fernando/Dropbox/AnalysisPhD/Spatial/raster/LandCover/LS_2011_LC.tif&quot;)
fullgrid(lc) &lt;- FALSE
names(lc) &lt;- &quot;habitat&quot;

ndvi &lt;- readGDAL(fname = &quot;C:/Users/Fernando/Dropbox/AnalysisPhD/Spatial/raster/LandCover/LS_2011_NDVI.tif&quot;)
fullgrid(ndvi) &lt;- FALSE
names(ndvi) &lt;- &quot;ndvi&quot;

bounds &lt;- ddply(ran_df, 
                &quot;id&quot;, 
                function(df) c(min(df$x) - 100, 
                               max(df$x) + 100, 
                               min(df$y) - 100, 
                               max(df$y) + 100))
names(bounds) &lt;- c(&quot;id&quot;,&quot;xmin&quot;,&quot;xmax&quot;,&quot;ymin&quot;,&quot;ymax&quot;)

xym &lt;- as.matrix(rbind(
  c(min(bounds$xmin), max(bounds$ymax)),
  c(max(bounds$xmax), max(bounds$ymax)),
  c(max(bounds$xmax), min(bounds$ymin)),
  c(min(bounds$xmin), min(bounds$ymin)),
  c(min(bounds$xmin), max(bounds$ymax))))

p &lt;- Polygon(xym)
ps &lt;- Polygons(list(p),1)
clip_rect &lt;- SpatialPolygons(list(ps))
proj4string(clip_rect) &lt;- CRS(&quot;+proj=utm +zone=16 +datum=WGS84 +units=m +no_defs +ellps=WGS84 +towgs84=0,0,0&quot;)

hab &lt;- lc[clip_rect, drop = TRUE]
age &lt;- ndvi[clip_rect, drop = TRUE]

image(hab, col = brewer.pal(4, &quot;YlGn&quot;))
</code></pre>

<p><img src="data:image/png;base64,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" alt="plot of chunk load_habitat_maps"/> </p>

<p><br></p>

<h2>Calculate home ranges</h2>

<pre><code class="r">ob$area_core &lt;- 0
ob$area_primary &lt;- 0
ob$area_total &lt;- 0
ob$ndvi_core &lt;- 0
ob$ndvi_primary &lt;- 0
ob$ndvi_total &lt;- 0
ob$ndvi_high &lt;- 0
ob$ndvi_medium &lt;- 0
ob$ndvi_low &lt;- 0

ud &lt;- list()
vv &lt;- list()

# Calculate diffusion values
for(i in 1:length(levels(ran_df$id)))
{
  vv_id &lt;- levels(ran_df$id)[i]
  vv[[i]] &lt;- BRB.D(ran[id = vv_id], 
                   Tmax = 90*60, 
                   Lmin = 5, 
                   habitat = hab, 
                   activity = NULL)
  names(vv[[i]]) &lt;- levels(ran_df$id)[i]
}

# Warning: VERY SLOW!!!!
# Takes about 25 minutes on my laptop (2.10 GHz Core2 Duo CPU w/ 4 GB ram)
# Can repeat for recursion / intensity distributions (t = &quot;RD&quot; or t = &quot;ID&quot;)
for(i in 1:nrow(ob)){
  temp &lt;- suppressWarnings(area.BRB(
    x = ran[id = ob[i, ]$id],
    start.date = as.POSIXct(as.Date(int_start(ob[i, ]$ints))), 
    end.date = as.POSIXct(as.Date(int_end(ob[i, ]$ints)) + days(1)), 
    hab = hab,    
    iso = c(50, 70, 95),
    t = &quot;UD&quot;,
    vv = vv[[ob[i, ]$id]]
  ))

  ob[i, ]$area_core &lt;- temp$hr$hr50$area
  ob[i, ]$area_primary &lt;- temp$hr$hr70$area
  ob[i, ]$area_total &lt;- temp$hr$hr95$area

  ob[i, ]$ndvi_core &lt;- temp$ndvi$ndvi50
  ob[i, ]$ndvi_primary &lt;- temp$ndvi$ndvi70
  ob[i, ]$ndvi_total &lt;- temp$ndvi$ndvi95

  ob[i, ]$ndvi_high &lt;- temp$ndvi$ndvi50
  ob[i, ]$ndvi_medium &lt;- mean(ndvi[gDifference(temp$hr$hr70, 
                                               temp$hr$hr50), ]$ndvi, 
                              na.rm = TRUE)
  ob[i, ]$ndvi_low &lt;- mean(ndvi[gDifference(temp$hr$hr95, 
                                            temp$hr$hr70), ]$ndvi, 
                           na.rm = TRUE)

  ud[[i]] &lt;- temp$ud 
}
</code></pre>

<p><br></p>

<h2>Write utilization distribution raster images to disk</h2>

<pre><code class="r"># Create directory to hold output files
mainDir &lt;- getwd()
subDir1 &lt;- &quot;HomeRanges&quot;
subDir2 &lt;- &quot;ud&quot;
dir.create(file.path(mainDir, subDir1), showWarnings = FALSE)
dir.create(file.path(mainDir, subDir1, subDir2), showWarnings = FALSE)

# Repeat for each type of distribution
for(i in 1:length(ud)){  
  writeGDAL(ud[[i]][1],
            fname=paste(&quot;HomeRanges/ud/&quot;, 
                        sprintf(&#39;%03d&#39;,i), 
                        &quot;_&quot;,ob[i,]$id,&quot;_&quot;, 
                        ob[i,]$block_type, &quot;_&quot;, 
                        as.Date(int_start(ob[i, ]$ints)), &quot;_&quot;, 
                        as.Date(int_end(ob[i, ]$ints)), &quot;.tif&quot;, 
                        sep = &quot;&quot;))
}

rm(mainDir)
rm(subDir1)
rm(subDir2)
rm(ud)
gc()
</code></pre>

<p><br></p>

<h2>Write hr data to disk</h2>

<pre><code class="r">ob$mean_tmax_s &lt;- scale(ob$mean_tmax)
ob$mean_fruit_s &lt;- scale(ob$mean_fruit)
ob$adult_mass_s &lt;- scale(ob$adult_mass)

ob$start &lt;- int_start(ob$ints)
ob$end &lt;- int_end(ob$ints)

ob$rowid &lt;- as.numeric(rownames(ob))

# Fix problem wiht Sept. 2008 weather gap
ob[is.na(ob$mean_tmax) &amp; ob$block_type == &quot;month&quot; &amp; (yday(ob$start) == 245 | yday(ob$start) == 244), ]$mean_tmax &lt;- mean(subset(ob, block_type == &quot;month&quot; &amp; (yday(start) == 245 | yday(start) == 244))$mean_tmax, na.rm = TRUE)

ob[is.na(ob$mean_tmin) &amp; ob$block_type == &quot;month&quot; &amp; (yday(ob$start) == 245 | yday(ob$start) == 244), ]$mean_tmin &lt;- mean(subset(ob, block_type == &quot;month&quot; &amp; (yday(start) == 245 | yday(start) == 244))$mean_tmin, na.rm = TRUE)

# Write to csv for later use
write.csv(ob, &quot;ob.csv&quot;, row.names = FALSE)
</code></pre>

<h4>Forward to <a href="HRModels.html">models</a></h4>

</body>

</html>


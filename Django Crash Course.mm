<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Django Crash Course" FOLDED="false" ID="ID_438552765" CREATED="1618445554302" MODIFIED="1618446995937" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff" fit_to_viewport="false" show_note_icons="true"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="5" RULE="ON_BRANCH_CREATION"/>
<node TEXT="Install" POSITION="right" ID="ID_1952588858" CREATED="1618445588511" MODIFIED="1618446051329" HGAP_QUANTITY="11.750000067055222 pt" VSHIFT_QUANTITY="-60.74999818950897 pt">
<edge COLOR="#ff0000"/>
<font SIZE="14"/>
<node TEXT="Git" ID="ID_1917351853" CREATED="1618445701973" MODIFIED="1618445970434"/>
<node TEXT="Anaconda" ID="ID_1489220903" CREATED="1618445654496" MODIFIED="1618445961716"/>
<node TEXT="PostgreSQL" ID="ID_1855267921" CREATED="1618445708897" MODIFIED="1618446033262"/>
<node TEXT="Visual Studio Code IDE" ID="ID_1388944924" CREATED="1618445666441" MODIFIED="1618445701592"/>
</node>
<node TEXT="Setup Virtual Env." POSITION="left" ID="ID_247149733" CREATED="1618446092867" MODIFIED="1618446126187">
<edge COLOR="#0000ff"/>
<font SIZE="14"/>
<node TEXT="CLI: conda create -n project_name python=version" ID="ID_1945887069" CREATED="1618446134605" MODIFIED="1618446193502">
<font ITALIC="true"/>
</node>
<node TEXT="CLI: conda activate project_name" ID="ID_1291690730" CREATED="1618446214781" MODIFIED="1618446238955"/>
<node TEXT="Install Django CLI: pip3 install django" ID="ID_1087351033" CREATED="1618446250710" MODIFIED="1618446640949"/>
<node TEXT="" ID="ID_590797940" CREATED="1618446642151" MODIFIED="1618446642151"/>
</node>
<node TEXT="Start New Project" POSITION="right" ID="ID_1399813369" CREATED="1618446660012" MODIFIED="1618446695996">
<edge COLOR="#00ff00"/>
<font SIZE="14"/>
<node TEXT="Change directory to new location: mkdir/cd" ID="ID_1736250146" CREATED="1618446749477" MODIFIED="1618446790577"/>
<node TEXT="CLI: django-admin startproject project_name" ID="ID_1702646533" CREATED="1618446697449" MODIFIED="1618446728587"/>
<node TEXT="CLI: xed manage.py" ID="ID_481388105" CREATED="1618446808320" MODIFIED="1618446838644"/>
<node TEXT="CLI: xed settings.py" ID="ID_1800219689" CREATED="1618446838997" MODIFIED="1618446857167"/>
<node TEXT="" ID="ID_554459929" CREATED="1618446857549" MODIFIED="1618446857549"/>
</node>
<node TEXT=" Create db &amp; Run Project" POSITION="left" ID="ID_1805133864" CREATED="1618446873053" MODIFIED="1618447125446" HGAP_QUANTITY="58.99999865889549 pt" VSHIFT_QUANTITY="113.99999660253535 pt">
<edge COLOR="#ff00ff"/>
<font SIZE="14" BOLD="false"/>
<node TEXT="cd django_dir" ID="ID_1128620548" CREATED="1618446942594" MODIFIED="1618447001802" HGAP_QUANTITY="38.74999926239258 pt" VSHIFT_QUANTITY="25.4999992400408 pt"/>
<node TEXT="CLI: project_name manage.py" ID="ID_5863506" CREATED="1618446960226" MODIFIED="1618447050585" HGAP_QUANTITY="41.749999172985554 pt" VSHIFT_QUANTITY="12.749999620020402 pt"/>
<node TEXT="Create db: CLI: python manage.py migrate" ID="ID_1503950936" CREATED="1618447056413" MODIFIED="1618447125444" HGAP_QUANTITY="34.999999374151244 pt" VSHIFT_QUANTITY="11.999999642372142 pt"/>
<node TEXT="Superuser: CLI: python manage.py createsuperuser" ID="ID_554538629" CREATED="1618447240771" MODIFIED="1618447256669"/>
<node TEXT="CLI: python manage.py runserver" ID="ID_802749892" CREATED="1618447140231" MODIFIED="1618447149426"/>
<node TEXT="Visit 127.0.0.1:8000" ID="ID_230167792" CREATED="1618447171863" MODIFIED="1618447180357"/>
<node TEXT="To stop server: Control-C" ID="ID_1104725190" CREATED="1618447188937" MODIFIED="1618447213391"/>
</node>
<node TEXT="Create Homepage App" POSITION="right" ID="ID_1860766150" CREATED="1618447310038" MODIFIED="1618447329188">
<edge COLOR="#00ffff"/>
<font SIZE="14"/>
<node TEXT="python manage.py startapp homepage" ID="ID_50149864" CREATED="1618447337401" MODIFIED="1618447343040"/>
<node TEXT="Project for Templates" ID="ID_1847471082" CREATED="1618447412751" MODIFIED="1618447426290">
<font BOLD="true"/>
</node>
<node TEXT=" Configure Your Templates: CLI xed settings.py" ID="ID_660788723" CREATED="1618447437115" MODIFIED="1618447476696"/>
<node TEXT="Add a Simple Homepage View" ID="ID_1048089625" CREATED="1618447479837" MODIFIED="1618447489585">
<font BOLD="true"/>
</node>
<node TEXT="CLI: xed project_name/homepage/view.py" ID="ID_998708071" CREATED="1618447499183" MODIFIED="1618447616302"/>
<node TEXT="Add to view.py:&#xa;from django.views.generic import TemplateView&#xa;class HomepageView(TemplateView):&#xa;    template_name = &apos;index.html&apos;" ID="ID_725024201" CREATED="1618447617184" MODIFIED="1618447659886"/>
<node TEXT="Know URL Routing" ID="ID_1356704201" CREATED="1618447685542" MODIFIED="1618447693961">
<font BOLD="true"/>
</node>
<node TEXT="CLI: xed urls.py" ID="ID_1649781357" CREATED="1618447695133" MODIFIED="1618447764168"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      from django.contrib import admin
    </p>
    <p>
      from django.urls import path
    </p>
    <p>
      
    </p>
    <p>
      urlpatterns = [
    </p>
    <p>
      &#160;&#160;&#160;&#160;path('admin/', admin.site.urls),
    </p>
    <p>
      ]
    </p>
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</map>

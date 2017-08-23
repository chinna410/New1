<project default="test" basedir="." xmlns:sf="antlib:com.salesforce">

    <property file="build-ji.properties"/>
    <property environment="env"/>

	<target name="test">
      <sf:deploy username="${chinna@yella.com}" password="${jaipal@123}" serverurl="${https://yelson-dev-ed.my.salesforce.com}" deployRoot="./" runAllTests="true" />
    </target>

	<target name="clean">
      <sf:deploy username="${chinna@yella.com}" password="${jaipal@123}" serverurl="${https://yelson-dev-ed.my.salesforce.com}" deployRoot="clean" />
    </target>

</project>

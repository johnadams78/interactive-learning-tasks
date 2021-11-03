# 8) Checks output.tf.
  FULLREPOPATH=/home/ec2-user/interactive-learning-tasks
  
  outputzone=`grep -o aws_route53_record.*zone_id $FULLREPOPATH/route53/output.tf`
  outputname=`grep -o aws_route53_record.*name $FULLREPOPATH/route53/output.tf`
  outputrecs=`grep -o aws_route53_record.*records $FULLREPOPATH/route53/output.tf`

  if [[ $outputzone == aws_route53_record*zone_id ]] 2>/dev/null && [[ $outputname == aws_route53_record*name ]] 2>/dev/null && [[ $outputrecs == aws_route53_record.*records ]] 2>/dev/null;
  echo $outputname
  echo $outputzone
  echo $outputrecs
  then
    echo " 8) ${y}output.tf${g} has proper data inside${rs}."
    sleep 0.2s
  else
    echo " 8) ${y}output.tf${r} doesn't have proper data inside, please try again${rs}."
    sleep 0.2s
  fi
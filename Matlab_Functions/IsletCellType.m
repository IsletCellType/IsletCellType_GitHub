function [Probability_abd,CellTypeNumber] = IsletCellType(R_Access,Leak,MaxCurrent,V_Hinf_New,ACurrent,TailCurrent,CellCap,K_Hinf_Old)
%% Created by L.J.B.Briant 06-07-16; based on data from DataFile_ModelBuild_06-07-16.sav
% ACurrent; 0=(Cs-Glut, No IA), 1=(K-Glut, No IA), 3=(K-Glut, Yes IA)
% TailCurrent; 0=No, 1=Yes
% R_Access (MOhm); Leak (pA); GOF_Hinf (0-1; if unknown, put 1); MaxCurrent
% (pA); V_Hinf (mV).

if TailCurrent==0
    TailCurrent_Dummy=[1 0];
    
    if ACurrent==0;
    ACurrent_Dummy=[1 0];
    
    vars=[1,Leak,R_Access,CellCap,K_Hinf_Old,MaxCurrent,ACurrent_Dummy(1),ACurrent_Dummy(2),V_Hinf_New,V_Hinf_New*R_Access,TailCurrent_Dummy(1),TailCurrent_Dummy(2)];
    p_alpha=[-38.19594156,-.10975613,-.40942968,.33648810,.30220392,.00548380,2.23835397,0,.24880022,-.01325973,44.68506914,0];
    p_beta=[-60.38825606,-.07654217,-.12443544,.93344867,.23331271,.00081498,21.23772737,0,.08505436,-.01006656,31.00735195,0];
    
    logit_alpha=dot(vars,p_alpha);
    logit_beta=dot(vars,p_beta);
    prob_alpha=exp(logit_alpha)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_beta=exp(logit_beta)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_delta=1-prob_alpha-prob_beta;
    
    elseif ACurrent==1;
    ACurrent_Dummy=[0 1];
    
    vars=[1,Leak,R_Access,CellCap,K_Hinf_Old,MaxCurrent,ACurrent_Dummy(1),ACurrent_Dummy(2),V_Hinf_New,V_Hinf_New*R_Access,TailCurrent_Dummy(1),TailCurrent_Dummy(2)];
    p_alpha=[-38.19594156,-.10975613,-.40942968,.33648810,.30220392,.00548380,2.23835397,0,.24880022,-.01325973,44.68506914,0];
    p_beta=[-60.38825606,-.07654217,-.12443544,.93344867,.23331271,.00081498,21.23772737,0,.08505436,-.01006656,31.00735195,0];
    
    logit_alpha=dot(vars,p_alpha);
    logit_beta=dot(vars,p_beta);
    prob_alpha=exp(logit_alpha)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_beta=exp(logit_beta)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_delta=1-prob_alpha-prob_beta;
    
    else
    ACurrent_Dummy=[0 0];
    
    vars=[1,Leak,R_Access,CellCap,K_Hinf_Old,MaxCurrent,ACurrent_Dummy(1),ACurrent_Dummy(2),V_Hinf_New,V_Hinf_New*R_Access,TailCurrent_Dummy(1),TailCurrent_Dummy(2)];
    p_alpha=[-38.19594156,-.10975613,-.40942968,.33648810,.30220392,.00548380,2.23835397,0,.24880022,-.01325973,44.68506914,0];
    p_beta=[-60.38825606,-.07654217,-.12443544,.93344867,.23331271,.00081498,21.23772737,0,.08505436,-.01006656,31.00735195,0];
    
    logit_alpha=dot(vars,p_alpha);
    logit_beta=dot(vars,p_beta);
    prob_alpha=exp(logit_alpha)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_beta=exp(logit_beta)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_delta=1-prob_alpha-prob_beta;
    
    end
    
else
    TailCurrent_Dummy=[0 1];
    
    if ACurrent==0;
    ACurrent_Dummy=[1 0];
    
    vars=[1,Leak,R_Access,CellCap,K_Hinf_Old,MaxCurrent,ACurrent_Dummy(1),ACurrent_Dummy(2),V_Hinf_New,V_Hinf_New*R_Access,TailCurrent_Dummy(1),TailCurrent_Dummy(2)];
    p_alpha=[-38.19594156,-.10975613,-.40942968,.33648810,.30220392,.00548380,2.23835397,0,.24880022,-.01325973,44.68506914,0];
    p_beta=[-60.38825606,-.07654217,-.12443544,.93344867,.23331271,.00081498,21.23772737,0,.08505436,-.01006656,31.00735195,0];
    
    logit_alpha=dot(vars,p_alpha);
    logit_beta=dot(vars,p_beta);
    prob_alpha=exp(logit_alpha)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_beta=exp(logit_beta)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_delta=1-prob_alpha-prob_beta;
    
    elseif ACurrent==1;
    ACurrent_Dummy=[0 1];
    
    vars=[1,Leak,R_Access,CellCap,K_Hinf_Old,MaxCurrent,ACurrent_Dummy(1),ACurrent_Dummy(2),V_Hinf_New,V_Hinf_New*R_Access,TailCurrent_Dummy(1),TailCurrent_Dummy(2)];
    p_alpha=[-38.19594156,-.10975613,-.40942968,.33648810,.30220392,.00548380,2.23835397,0,.24880022,-.01325973,44.68506914,0];
    p_beta=[-60.38825606,-.07654217,-.12443544,.93344867,.23331271,.00081498,21.23772737,0,.08505436,-.01006656,31.00735195,0];
    
    logit_alpha=dot(vars,p_alpha);
    logit_beta=dot(vars,p_beta);
    prob_alpha=exp(logit_alpha)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_beta=exp(logit_beta)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_delta=1-prob_alpha-prob_beta;
    
    else
    ACurrent_Dummy=[0 0];
    
    vars=[1,Leak,R_Access,CellCap,K_Hinf_Old,MaxCurrent,ACurrent_Dummy(1),ACurrent_Dummy(2),V_Hinf_New,V_Hinf_New*R_Access,TailCurrent_Dummy(1),TailCurrent_Dummy(2)];
    p_alpha=[-38.19594156,-.10975613,-.40942968,.33648810,.30220392,.00548380,2.23835397,0,.24880022,-.01325973,44.68506914,0];
    p_beta=[-60.38825606,-.07654217,-.12443544,.93344867,.23331271,.00081498,21.23772737,0,.08505436,-.01006656,31.00735195,0];
    
    logit_alpha=dot(vars,p_alpha);
    logit_beta=dot(vars,p_beta);
    prob_alpha=exp(logit_alpha)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_beta=exp(logit_beta)/(1+exp(logit_alpha)+exp(logit_beta));
    prob_delta=1-prob_alpha-prob_beta;
    end
end

Probability_abd=[prob_alpha,prob_beta,prob_delta];

CellTypeNumber=find(Probability_abd==(max(Probability_abd))); % 1=alpha; 2=beta; 3=delta

% if maximum_index==1
%     'Alpha cell'
% elseif maximum_index==2
%     'Beta cell'
% else
%     'Delta cell'
% end

end
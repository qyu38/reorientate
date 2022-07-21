function plot_td_features(gl_z_seg,gl_z,test_name)
%PLOT_TD_FEATURES Generate the plots of time domain features

%calculate the RMS
RMS_seg=rms(gl_z_seg);
%calculate the variance
var_seg=var(gl_z_seg);
%calculate the skewness
skew_seg=skewness(gl_z_seg);
%calculate the kurtosis
kurt_seg=kurtosis(gl_z_seg);
ApEn_seg=zeros(1,width(gl_z_seg));

for i=1:width(gl_z_seg)
    ApEn_seg(1,i)=approximateEntropy(gl_z_seg(:,i));
end

figure
subplot(6,1,1)
plot(gl_z);%plot z
ylabel('Raw signal')

subplot(6,1,2)
plot(var_seg)
ylabel('Variance')

subplot(6,1,3)
plot(RMS_seg)
ylabel('RMS')
subplot(6,1,4)
plot(skew_seg)
ylabel('Skewness')
subplot(6,1,5)
plot(kurt_seg)
ylabel('Kurtosis')
subplot(6,1,6)
plot(ApEn_seg)
ylabel('Approx Entropy')
sgtitle(test_name); 
end


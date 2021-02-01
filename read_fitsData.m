%File name 
x='map_k1_imap_yr1_v1.fits'

%File information Extraction
info = fitsinfo(x);
[~,ContIndex]=size(info.Contents)
disp(info.Contents)
%Showing all HDU component

%Getting input from user to show HDU components
disp('Do you want to check the HDU components?')
disp('[NaN]-Go directly for contents')
disp('[0]-Display all HUD components')
disp('[n]-Display n HUD components')
hInput=input('\n');
if hInput==0
    
    for i=1:ContIndex
    
        fitsdisp(x,'Index',i,'Mode','full');
        pause;
    end
elseif isempty(hInput)==0
        fitsdisp(x,'Index',hInput,'Mode','full');
else
    pause;
    
end

%Select the components to show
 Ind=input('Select the componenets to load:  ');
 data = fitsread(x,char(info.Contents(Ind)),1);


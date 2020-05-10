function save_as_png(filename)
% 
newfilename = [filename '.png']; 
 
% disable the conversion of the background
set(gcf,'inverthardcopy','off'); 
 
% save it to a temporary bmp file
% bmps use Ghostscript which works better for filled objects
print('-dbmp16m','tmp.bmp','-r300','-noui'); 
 
% read the temporary bmp file in
img = imread('tmp.bmp'); 
 
% delete the temporary file
delete('tmp.bmp'); 
 
% save the image with the specified filename
imwrite(img,newfilename); figure
 
end 
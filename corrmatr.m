function h = corrmatr(data, string)
%% Parse input arguments
len = length(string);
%% Plot the corr matrix and set labels
imagesc(data)
set(gca, 'FontName', 'Times New Roman');
set(gca, 'XtickLabel', string);
set(gca, 'YtickLabel', string);
set(gca, 'XAxisLocation', 'top');
set(gca, 'XTick',1:len);
set(gca, 'Ytick', 1:len);
set(gca, 'XTickLabelRotation',45);
set(gca, 'YTickLabelRotation',45);
colormap('jet');
colorbar();
print('corrmatr', '-dpng', '-r300');
function out=CCdis(time_series, lag)
    time_series=time_series(1:end); 
    for k=1:length(time_series)-5
		cx(k)=mean([time_series(k),time_series(k+2),time_series(k+4)]);
		cy(k)=mean([time_series(k+1),time_series(k+3),time_series(k+5)]);
    end
    cx=cx(1:lag:end);
    cy=cy(1:lag:end);
        D=sqrt((cx(2:end)-cx(1:end-1)).^2+(cy(2:end)-cy(1:end-1)).^2);
    out=mean(abs(aji(1:lag:end-1)-aji(2:lag:end)));
end
    
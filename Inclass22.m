%Inclass 22

%GB comments
1 100
2 100
overall 100


%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results. 

% 1 copy of transcription factor necessary to activate transcription
ku = 0.1;
for kb = 0:0.05:5
    polycoeff = [1 (1-kb) -ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts)==0);
    plot(kb*ones(length(rts), 1), rts, 'r.');
end
xlabel('kb'); ylabel('Fixed Points');
set(gca, 'FontSize', 24);

% 4 copies of transcription factor necessary to activate transcription
ku = 0.1;
for kb = 0:0.05:5
    polycoeff = [1 -kb 0 0 1 -ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts)==0);
    plot(kb*ones(length(rts), 1), rts, 'b.');
end
xlabel('kb'); ylabel('Fixed Points');
set(gca, 'FontSize', 24);

% 8 copies of transcription factor necessary to activate transcription
ku = 0.1;
for kb = 0:0.05:5
    polycoeff = [1 -kb 0 0 0 0 0 0 1 -ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts)==0);
    plot(kb*ones(length(rts), 1), rts, 'g.');
end
xlabel('kb'); ylabel('Fixed Points');
set(gca, 'FontSize', 24);
    
% Based on the above bifurcation diagrams, one copy of a transcription
% factor is not sufficient for activation. A system with 4 or 8 copies of
% transcription factor required appear to work ok.

% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene. 

ku = 0.1;
for kb = 0:0.05:5
    polycoeff = [1 kb 1 -ku];
    rts = roots(polycoeff);
    rts = rts(imag(rts)==0);
    plot(kb*ones(length(rts), 1), rts, 'r.');
end
xlabel('kb'); ylabel('Fixed Points');
set(gca, 'FontSize', 24);

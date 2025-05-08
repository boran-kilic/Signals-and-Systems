notename = {'A' 'A#' 'B' 'C' 'C#' 'D' 'D#' 'E' 'F' 'F#' 'G' 'G#' };
%song = {'A' 'A' 'E' 'E' 'F#' 'F#' 'E' 'E' 'D' 'D' 'C#' 'C#' 'B' 'B' 'A' 'A'};
% song = {'C' 'C' 'D' 'C' 'F' 'E' 'C' 'C' 'D' 'C' 'G' 'F' 'C' 'C' 'C#' 'A#' 'F' 'E' 'D' 'A#'};
song = {'E' 'E' 'E' 'E' 'E' 'E' 'E' 'G' 'C' 'D' 'E' 'F' 'F' 'F' 'F' 'F' 'E' 'E' 'E' 'E' 'D' 'D' 'E' 'D' 'G'};
% song = {'E' 'B' 'E' 'A' 'D#' 'G#' 'B' 'E' 'A' 'D#' 'G#' 'B' 'E' 'A' 'D#' 'G#' 'B' 'E' 'A' 'D#' 'G#' 'B' 'E'};
% song = {'A' 'G#' 'A' 'B' 'B' 'B' 'B' 'D' 'C' 'B' 'A' 'B' 'B' 'B' 'E' 'C' 'B' 'A' 'B' 'B' 'C' 'B' 'A' 'A' 'B' 'C' 'B' 'C' 'A' 'A' 'G#' 'F' 'A' 'A' 'A' 'A' 'A' 'B' 'C' 'C' 'B' 'B' 'A' 'G#' 'B' 'A' 'G#' 'C' 'B' 'A' 'G#' 'F'}

for k1 = 1:length(song)
    idx = strcmp(song(k1), notename);
    songidx(k1) = find(idx);
end
dur = 0.3*8192;
songnote = [ ];
for k1 = 1:length(songidx)
    songnote = [songnote; [notecreate(songidx(k1),dur) zeros(1,75)]'];
end
soundsc(songnote, 8192)
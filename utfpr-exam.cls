% UTFPR-exam cls

% Define versão necessária do LaTeX
\NeedsTeXFormat{LaTeX2e}

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
	\PassOptionsToClass{\CurrentOption}{exam}%
}

\ProcessOptions\relax
\LoadClass{exam}



	\newcommand*{\renameenviron}[1]{%
		\expandafter\let\csname exam-#1\expandafter\endcsname
		\csname #1\endcsname
		\expandafter\let\csname endexam-#1\expandafter\endcsname
		\csname end#1\endcsname
		\expandafter\let\csname #1\endcsname\relax
		\expandafter\let\csname end#1\endcsname\relax
	}
	\renameenviron{framed}
	\renameenviron{shaded}
	\renameenviron{leftbar}
	
	
	\RequirePackage{framed}	
	\RequirePackage[utf8]{inputenc}		% Codificacao do documento (conversão automática dos acentos)
	\RequirePackage{graphicx,lastpage}
	\RequirePackage{epstopdf}
	\RequirePackage{upgreek}
	%\RequirePackage{karnaugh-map}
	\RequirePackage{censor}
	%\RequirePackage[hidelinks]{hyperref}
	\RequirePackage{amsfonts}
	
		\RequirePackage{siunitx}
	% Settings for siunitx package
	\sisetup{scientific-notation = fixed, fixed-exponent = 0, round-mode = places, round-precision = 2,output-decimal-marker = {,}}
	
	
	
	\RequirePackage[brazilian,hyperpageref]{backref}	 % Paginas com as citações na bibl
	\RequirePackage[brazilian]{babel}
	
	\newcommand{\overbar}[1]{\mkern 1.5mu\overline{\mkern-1.5mu#1\mkern-1.5mu}\mkern 1.5mu}
	
	\censorruledepth=-.2ex
	\censorruleheight=.1ex
	\hyphenpenalty 10000
%	\RequirePackage[paperheight=10.5in,paperwidth=8.27in,bindingoffset=0in,left=0.8in,right=1in,
%	top=0.7in,bottom=1in,headsep=.5\baselineskip]{geometry}
	
	
\RequirePackage[a4paper,bindingoffset=0in,left=0.8in,right=1in,
top=0.7in,bottom=1in,headsep=.5\baselineskip]{geometry}

	
	\flushbottom
	\RequirePackage[normalem]{ulem}
	\renewcommand\ULthickness{2pt}   %%---> For changing thickness of underline
	\setlength\ULdepth{1.5ex}%\maxdimen ---> For changing depth of underline
	\renewcommand{\baselinestretch}{1}
	\pagestyle{empty}
	
	
	\RequirePackage{cleveref}
	\crefname{figure}{figure}{figures}
	\crefname{question}{question}{questions}
	
	
	
	
\pointpoints{ponto}{pontos}
\bonuspointpoints{ponto extra}{pontos extras}
%
\totalformat{Pergunta \thequestion: \totalpoints pontos}
%
\chqword{Pergunta}
\chpgword{Página}
\chpword{Pontos}
\chbpword{Pontos extra}
\chsword{Pontos obtidos}
\chtword{Total}
	
	
\hqword{Questão:}        \vqword{Questão}        \cellwidth{2em}
\hpgword{Página:}           \vpgword{Página}           \gradetablestretch{1.5}
\hpword{Pontos:}          \vpword{Pontos}
\hsword{Pontuação:}           \vsword{Pontuação}
\htword{Total}            \vtword{Total:}
\bhqword{Questão:}       \bvqword{Questão}
\bhpgword{Página:}          \bvpgword{Página}
\bhpword{Pontos extras:}   \bvpword{Pontos extras}
\bhsword{Pontuação:}          \bvsword{Pontuação}
\bhtword{Total}           \bvtword{Total:}
\chqword{Questão:}       \cvqword{Questão}
\chpgword{Página:}          \cvpgword{Página}
\chpword{Pontos:}         \cvpword{Pontos}
\chbpword{Pontos extras:}  \cvbpword{Pontos extras}
\chsword{Pontuação:}          \cvsword{Pontuação}
\chtword{Total}           \cvtword{Total:}



\renewcommand{\solutiontitle}{\noindent\textbf{Solução:} }



% Macros for Cross-reference
\newcommand{\figref}[1]{Figura~\ref{#1}}   % Cross-reference of figures
\newcommand{\tabref}[1]{Tabela~\ref{#1}}    % Cross-reference of tables
\newcommand{\eqnref}[1]{\eqref{#1}}      % Cross-reference of equations
\newcommand{\secref}[1]{Seção~\ref{#1}}  % Cross-reference of equations
\newcommand{\defref}[1]{Definição~\ref{#1}} % 


% Comandos de dados - data
\providecommand{\imprimirdata}{}
\newcommand{\data}[1]{\renewcommand{\imprimirdata}{#1}}

% Comandos de dados - professor
\providecommand{\imprimirprofessor}{}
\newcommand{\professor}[1]{\renewcommand{\imprimirprofessor}{#1}}

% Comandos de dados - disciplina
\providecommand{\imprimirdisciplina}{}
\newcommand{\disciplina}[1]{\renewcommand{\imprimirdisciplina}{#1}}

% Comandos de dados - tipoexame
\providecommand{\imprimirtipoexame}{}
\newcommand{\tipoexame}[1]{\renewcommand{\imprimirtipoexame}{#1}}

% Comandos de dados - Descrição
\providecommand{\imprimirdescricao}{}
\newcommand{\descricao}[1]{\renewcommand{\imprimirdescricao}{#1}}


% Comandos de dados - semestre
\providecommand{\imprimirsemestre}{}
\newcommand{\semestre}[1]{\renewcommand{\imprimirsemestre}{#1}}

% Comandos de dados - departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - Universidade
\providecommand{\imprimiruniversidade}{}
\newcommand{\universidade}[1]{\renewcommand{\imprimiruniversidade}{#1}}

	
	\pagestyle{headandfoot}
	\headrule
	\newcommand{\continuedmessage}{%
		\ifcontinuation{\footnotesize \imprimirprofessor}{}%
	}
	\runningheader{\footnotesize \imprimirdisciplina }
	{\footnotesize }
	{\footnotesize P\'agina \thepage\ de \numpages}
	\footrule
	\footer{\footnotesize \imprimirtipoexame -- \imprimirdata}
	{}
	{\ifincomplete{\footnotesize \imprimirprofessor}{\iflastpage{\footnotesize \imprimirprofessor}{\footnotesize \imprimirprofessor}}}
	
	

		
% ---
% Impressão da Capa
\newcommand{\imprimircabecalho}{%
		
		%% \thispagestyle{empty}	
		\noindent
		\begin{minipage}[l]{.1\textwidth}%
			\noindent
			\includegraphics[width=3\textwidth]{Logos/logo-UTFPR}
		\end{minipage}
		\hfill
		\begin{minipage}[r]{.8\textwidth}%
			\begin{center}
				{\large \bfseries \imprimiruniversidade \par
				\large \imprimirdepartamento \\[4pt]
				%	\vspace{0.5cm}
				\imprimirdisciplina \par
				\vspace{0.3cm}
				\Large{ \imprimirtipoexame -- \imprimirdata}
			}
			%  \vspace{0.5cm}
			\end{center}
		\end{minipage}				
			\par
			\noindent
			\uline
		\hfill 	
				
%	\par
	\bigskip%\bigskip
	\begin{minipage}[t]{.6\textwidth}%
		\imprimirprofessor \par	
		\par
		Aluno(a): \makebox[3in]{\hrulefill} \par
			
	\end{minipage}%
	\hfill
	\begin{minipage}[t]{.4\textwidth}%
		Semestre: \imprimirsemestre \par
		\par
		RA: \makebox[1.5in]{\hrulefill} \par
	\end{minipage}
%	\par
%	\bigskip
}
% ---	

		
% ---
% Impressão da Capa
\newcommand{\imprimircabecalholista}{%
		
		%% \thispagestyle{empty}	
		\noindent
		\begin{minipage}[l]{.1\textwidth}%
			\noindent
			\includegraphics[width=3\textwidth]{Logos/logo-UTFPR}
		\end{minipage}
		\hfill
		\begin{minipage}[r]{.8\textwidth}%
			\begin{center}
				{\large \bfseries \imprimiruniversidade \par
				\large \imprimirdepartamento \\[4pt]
				%	\vspace{0.5cm}
				\imprimirdisciplina \par
				\vspace{0.3cm}
				\huge{ \imprimirtipoexame}
			}
			%  \vspace{0.5cm}
			\end{center}
		\end{minipage}	
			
			\par
			\noindent
			\uline
		\hfill 	
				
	\par
	\bigskip%\bigskip
	\begin{minipage}[t]{.6\textwidth}%
		\imprimirprofessor \par	
		\par
		Aluno(a): \makebox[3in]{\hrulefill} \par
			
	\end{minipage}%
	\hfill
	\begin{minipage}[t]{.4\textwidth}%
		Semestre: \imprimirsemestre \par
		\par
		RA: \makebox[1.5in]{\hrulefill} \par
	\end{minipage}
	\par
%	\bigskip
}
% ---	


% ---
% Impressão da Capa
\newcommand{\imprimircabecalhoexp}{%
		%% \thispagestyle{empty}	
		\noindent
		\begin{minipage}[l]{.1\textwidth}%
			\noindent
			\includegraphics[width=3\textwidth]{Logos/logo-UTFPR}
		\end{minipage}
		\hfill
		\begin{minipage}[r]{.8\textwidth}%
			\begin{center}
				{\large \bfseries \imprimiruniversidade \par
				\large \imprimirdepartamento \\[4pt]
				\imprimirdisciplina --  \imprimirsemestre  \\[4pt]
				\imprimirprofessor  \\[4pt]
			}
			%  \vspace{0.5cm}
			\end{center}					
		\end{minipage}	
			\par
			\noindent
			\uline
		\hfill 					
	\par
%	\bigskip
	
 \begin{center}
 	\huge \bfseries \imprimirtipoexame -- \imprimirdescricao
\end{center}
	
}
% ---	


	
% Impressão da Tabela de Pontos
\newcommand{\imprimirtabela}{%
\begin{center}
	Tabela de pontuação (Uso exclusivo do Professor).\\
		\addpoints
%	\combinedgradetable[h][questions]
	\gradetable[h][questions]
\end{center}	
\noindent \rule[2ex]{\textwidth}{2pt}	
\vspace{-1.3cm}
}
% ---	
	

	% Impressão da Capa
\newcommand{\imprimirtabelacombinada}{%
\begin{center}
	Tabela de pontuação (Uso exclusivo do Professor).\\
		\addpoints
	\combinedgradetable[h][questions]
%	\gradetable[h][questions]
\end{center}	
\noindent \rule[2ex]{\textwidth}{2pt}	
\vspace{-1.3cm}
}
% ---	
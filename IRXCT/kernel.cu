#include             "cuda_runtime.h"
#include         "device_functions.h"
#include "device_launch_parameters.h"
#include  "device_atomic_functions.h"

#include                  <windows.h>
#include                   <stdlib.h>
#include                   <malloc.h>
#include                   <memory.h>
#include                    <tchar.h>
#include                 <CommCtrl.h>
#include <htmlhelp.h>

#define _USE_MATH_DEFINES

#include                 "resource.h"

#include                     <math.h>
#include                     <time.h>
#include                    <psapi.h>
#include                 <Windowsx.h>

#include                        <set>
#include                     <vector>
#include                  <algorithm>

struct INF
{
	unsigned int               count;
	unsigned int              *index;
	float             *intersection;
	float        sumofintersections;
};

struct COO
{
	float                        X1;
	float                        Y1;
	float                        X2;
	float                        Y2;
};

bool Pcomparison1(std::pair<float, float> elem1, std::pair<float, float> elem2)
{
	return (elem1.first <= elem2.first) && (elem1.second < elem2.second);
}

bool Pcomparison2(std::pair<float, float> elem1, std::pair<float, float> elem2)
{
	return (elem1.first <= elem2.first) && (elem1.second > elem2.second);
}

#define ID_T               21
#define ID_R               25
#define ID_L               20
#define ID_M                8
#define ID_D               15
#define ID_BUTTONB         27
#define ID_BUTTONI         28
#define ID_STATICMAXIMUM1  37
#define ID_CHILDWINDOWS     7
#define ID_CHILDWINDOW2     6
#define ID_BUTTONH         29
#define ID_LISTVIEW1       14
#define ID_CHILDWINDOW1     5
#define ID_STATUSBAR1      35
#define ID_EDIT2            1
#define ID_BUTTONS         22
#define ID_BUTTONR         23
#define ID_STATICMINIMUM1  36
#define ID_BUTTON5         12
#define ID_BUTTON6         17
#define ID_CHILDWINDOWC    16
#define ID_BUTTONAPPLYLOG  38
#define ID_EDIT3           30
#define ID_BUTTON2          9
#define ID_PLOT            19
#define ID_BUTTON3         10
#define ID_BUTTON4         11
#define ID_BUTTON7         18
#define ID_EDIT1            4
#define ID_EDITGPU         31
#define ID_EDITGPUs1       32
#define ID_EDITGPUs2       33
#define ID_I               26
#define ID_BUTTONO         24
#define ID_EDITGPUs3       34
#define ID_BUTTON1          3

#define SPLITTER_BAR_WIDTH 0

float                                                                              *S;
INF                                                                                *Z;
float                                                                               a;
float                                                                               d;
bool                                                                               ai;
bool                                                                               fb;
float                                                                              fv;
INT_PTR CALLBACK                                  WndData(HWND, UINT, WPARAM, LPARAM);
INT_PTR CALLBACK                                  WndPlot(HWND, UINT, WPARAM, LPARAM);
INT_PTR CALLBACK                                  aboutpr(HWND, UINT, WPARAM, LPARAM);
float                                                                            *ri1;
float                                                                            *itv;
float                                                                            *ITv;
float                                                                            *ITV;
float                                                                           *dRI1;
unsigned int                                                                    *iIn1;
unsigned int                                                                    *iIn2;
unsigned int                                                                    *busy;
void                                        codeofWM_SIZE(HWND, float, unsigned int);
PBITMAPINFO                           CreateBitmapInfoStruct(HWND hwnd, HBITMAP hBmp);
float                                                                              lv;
float                                                                              c1;
unsigned int                                                                       nd;
unsigned int                                                                       nv;
unsigned int                                                                       nx;
unsigned int                                                                       ny;
unsigned int                                                                       nT;
unsigned int                                                                       NI;
float                                                                            max1;
float                                                                            *Oi1;
float                                                                            *mO1;
float                                                                            *RI1;
float                                                                            *RIa;
unsigned int                                                                    *NofU;
unsigned int                                                                    *nofu;
unsigned char                                                                   *plot;
unsigned char                                                                   *PLOT;
float                                                                           **RIv;
float                                                                           **mOv;
float                                                                           **pRI;
float                                                                           **pri;
bool                                                                           UPDATE;
bool                                                                           STATUS;
float                                                                          oImage;
clock_t                                                                        start1;
clock_t                                                                        start2;
TCHAR                                                      szChildClassS[_CVTBUFSIZE];
TCHAR                                                      szChildClass2[_CVTBUFSIZE];
TCHAR                                                      szChildClassC[_CVTBUFSIZE];
ATOM                                                       MyRegisterClass(HINSTANCE);
BOOL                                                     InitInstance(HINSTANCE, int);
INT_PTR CALLBACK                                   WndGPU(HWND, UINT, WPARAM, LPARAM);
INT_PTR CALLBACK                                   WNDGPU(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK                                  WndProc(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK                                  Wndproc(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK                                  wndproc(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK                                  wndProc(HWND, UINT, WPARAM, LPARAM);
LRESULT CALLBACK                                  wndconv(HWND, UINT, WPARAM, LPARAM);
INT_PTR CALLBACK                                  WndPROC(HWND, UINT, WPARAM, LPARAM);
INT_PTR CALLBACK                       WndParallelization(HWND, UINT, WPARAM, LPARAM);
void CreateBMPFile(HWND hwnd, LPTSTR pszFile, PBITMAPINFO pbi, HBITMAP hBMP, HDC hDC);
clock_t                                                                        finish;
cudaStream_t                                                                   stream;
unsigned int                                                                   *Ready;
unsigned int                                                                  nofGPUs;
unsigned int                                                                  ALREADY;
SYNCHRONIZATION_BARRIER                                                       barrier;
HANDLE                                                                       ghEvent1;
HANDLE                                                                       ghEvent2;
HANDLE                                                                       ghEvent3;
HANDLE                                                                       ghEvent4;
HANDLE                                                                       ghEvent5;
HANDLE                                                                       ghEvent6;
unsigned int                                                                 *WorkGPU;
unsigned int                                                           *g_TargetValue;
unsigned int                                                                 *dCounts;
unsigned char                                                                *pixels1;
unsigned char                                                                *pixelsS;
unsigned char                                                                *pixels2;
unsigned char                                                                *Pixels2;
HWND                                                                        hWndEdit1;
HWND                                                                        hWndEdit2;
HWND                                                                        hWndEdit3;
float                                                                       duration1;
float                                                                       duration2;
HINSTANCE                                                                   hInstance;
unsigned int                                                                *dindices;
unsigned int                                                                **iTotalv;
float                                                                       **fTotalv;

/*
HANDLE                                                                     cudaEvent1;
HANDLE                                                                     cudaEvent2;
HANDLE                                                                     cudaMutex1;
*/

HANDLE                                                                     cudaEventG;
HANDLE                                                                     cudaEventg;
unsigned int                                                               GpuThreads;
HWND                                                                      hWndButton8;
HWND                                                                      hWndButton1;
HWND                                                                      hWndButton2;
HWND                                                                      hWndButton3;
HWND                                                                      hWndButton4;
HWND                                                                      hWndButton5;
HWND                                                                      hWndButton6;
HWND                                                                      hWndButton7;
unsigned int                                                                       Fl;
unsigned int                                                                       Ll;
TCHAR                                                      szTitleOfApp1[_CVTBUFSIZE];
TCHAR                                                      szWindowClass[_CVTBUFSIZE];
unsigned int                                                                       Fc;
unsigned int                                                                       Lc;
unsigned int                                                                       er;
unsigned int                                                                      MAX;
TCHAR                                                                             *pc;
TCHAR                                                                             *Pc;
unsigned int                                                        *currentIteration;
DWORD WINAPI                                                       FL(LPVOID lpParam);
DWORD WINAPI                                                       FB(LPVOID lpParam);
DWORD WINAPI                                                     SbIR(LPVOID lpParam);
DWORD WINAPI                                                     SART(LPVOID lpParam);
float                                                          *dSumsOfIntersections;
TCHAR                                                      szChildClass1[_CVTBUFSIZE];
char                                                        currentInput[_CVTBUFSIZE];
TCHAR                                                                             *it;
TCHAR                                                                             *oe;
float                                                                             *dS;

/*
SMO -> simulation mode
*/

bool                                                                              SMO;
bool                                                                              UGC;
bool                                                                              rot;
bool                                                                              run;
float                                                                             cor;
unsigned int                                                                      nit;
unsigned int                                                                      nIT;
unsigned int                                                                      NIT;
unsigned int                                                                     nIn1;
unsigned int                                                                     nIn2;
float                                                                            min1;
HWND                                                                      hWndButtonS;
HWND                                                                      hWndButtonR;
HWND                                                                      hWndButtonO;
HWND                                                                      hWndButtonB;
HWND                                                                      hWndButtonI;
HWND                                                                      hWndButtonH;
HWND                                                                      hWndStatic1;
HWND                                                                      hWndStatic2;
HWND                                                                      hWndStatic3;
HWND                                                                      hWndStatict;
HWND                                                                      hWndStaticr;
HWND                                                                      hWndStaticM;
HWND                                                                      hWndToolbar;
unsigned int                                                              *lastButton;
unsigned int                                                             GPUSelection;
unsigned int                                                             *dparameters;
HWND                                                                    hWndStatusbar;
HWND                                                                    hWndListView1;
bool                                                                    LoadBalancing;
unsigned int                                                            *SystemMatrix;
float                                                                 *dIntersections;
unsigned int                                                          *Gpucalculation;
HWND                                                                 hWndChildwindow1;
HWND                                                                 hWndChildwindowS;
HWND                                                                 hWndChildwindow2;
HWND                                                                 hWndChildwindowC;
HWND                                                                     hWndMinimum1;
HWND                                                                     hWndMaximum1;
HWND                                                                     hWndApplylog;

__global__ void iterations_SbIR(float *dRI1, unsigned int *dindices, float *dIntersections, unsigned int *dCounts, float *dSumsOfIntersections, float *dS, unsigned int *dparameters)
{
	unsigned int gid = (blockIdx.x * blockDim.x * blockDim.y + threadIdx.x * blockDim.y + threadIdx.y);

	unsigned int i;
	unsigned int I;
	unsigned int k;
	unsigned int nr;

	if (gid == (dparameters[1] - 1))
	{
		nr = (dRI1[2 * dparameters[0]] + dRI1[2 * dparameters[0] + 1]);
	}
	else
	{
		nr = dRI1[2 * dparameters[0]];
	}

	unsigned int J = (gid * dRI1[2 * dparameters[0]]);
	unsigned int Max = dparameters[4];
	unsigned int sp = (Max * J);

	unsigned int cp;
	unsigned int index;
	unsigned int *pI;

	float Aux;
	float *pF;
	float *pf = (dRI1 + dparameters[0]);
	float PF;

	for (i = 0; i < nr; i++)
	{
		if (dS[J + i] > 0.0)
		{
			cp = (sp + i * Max);
			I = (J + i);
			index = dCounts[I];

			pI = (dindices + cp);
			pF = (dIntersections + cp);

			PF = 0.0;
			for (k = 0; k < index; k++)
			{
				PF += ((*pF) * dRI1[*pI]);
				pI++;
				pF++;
			}

			if (PF > 0.0)
			{
				Aux = (dS[I] / PF);

				pI = (dindices + cp);
				pF = (dIntersections + cp);
				for (k = 0; k < index; k++)
				{
					atomicAdd(pf + (*pI), (*pF) * dRI1[*pI] * Aux);
					pI++;
					pF++;
				}
			}
			else
			{
				if (index > 0)
				{
					Aux = (dS[I] / dSumsOfIntersections[I]);

					pI = (dindices + cp);
					pF = (dIntersections + cp);
					for (k = 0; k < index; k++)
					{
						atomicAdd(pf + (*pI), (*pF) * Aux);
						pI++;
						pF++;
					}
				}
			}
		}
	}
}

__global__ void iterations_SART(float *dRI1, unsigned int *dindices, float *dIntersections, unsigned int *dCounts, float *dSumsOfIntersections, float *dS, unsigned int *dparameters)
{
	unsigned int gid = (blockIdx.x * blockDim.x * blockDim.y + threadIdx.x * blockDim.y + threadIdx.y);

	unsigned int i;
	unsigned int I;
	unsigned int k;
	unsigned int nr;

	if (gid == (dparameters[1] - 1))
	{
		nr = (dRI1[2 * dparameters[0]] + dRI1[2 * dparameters[0] + 1]);
	}
	else
	{
		nr = dRI1[2 * dparameters[0]];
	}

	unsigned int J = (gid * dRI1[2 * dparameters[0]]);
	unsigned int Max = dparameters[4];
	unsigned int sp = (Max * J);

	unsigned int cp;
	unsigned int index;
	unsigned int *pI;

	float Aux;
	float *pF;
	float *pf = (dRI1 + dparameters[0]);
	float PF;

	for (i = 0; i < nr; i++)
	{
		if (dS[J + i] > 0.0)
		{
			cp = (sp + (i * Max));
			I = (J + i);
			index = dCounts[I];

			if (index > 0)
			{
				pI = (dindices + cp);
				pF = (dIntersections + cp);

				PF = 0.0;
				for (k = 0; k < index; k++)
				{
					PF += ((*pF) * dRI1[*pI]);
					pI++;
					pF++;
				}

				Aux = (dS[I] - PF);

				pI = (dindices + cp);
				pF = (dIntersections + cp);
				for (k = 0; k < index; k++)
				{
					atomicAdd(pf + (*pI), ((*pF) / dSumsOfIntersections[I]) * Aux);
					pI++;
					pF++;
				}
			}
		}
	}
}

clock_t eGPU;
HANDLE *hThreadArray;

void CUDART_CB MyCallback(cudaStream_t stream, cudaError_t status, void *data)
{
	eGPU = clock();

	InterlockedIncrement(g_TargetValue);

	WakeByAddressSingle(g_TargetValue);
}

int APIENTRY _tWinMain(_In_ HINSTANCE hinstance, _In_opt_ HINSTANCE hPrevInstance, _In_ LPTSTR lpCmdLine, _In_ int nCmdShow)
{
	UNREFERENCED_PARAMETER(hPrevInstance);
	UNREFERENCED_PARAMETER(lpCmdLine);

	MSG msg;
	HACCEL hAccelTable;

	LoadString(hinstance, IDS_APP_TITLE, szTitleOfApp1, _CVTBUFSIZE);
	LoadString(hinstance, IDC_IRXCT, szWindowClass, _CVTBUFSIZE);
	MyRegisterClass(hinstance);

	if (!InitInstance(hinstance, nCmdShow))
	{
		return FALSE;
	}

	hAccelTable = LoadAccelerators(hinstance, MAKEINTRESOURCE(IDC_IRXCT));

	while (GetMessage(&msg, NULL, 0, 0))
	{
		if (!TranslateAccelerator(msg.hwnd, hAccelTable, &msg))
		{
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}
	}

	return (int)msg.wParam;
}

ATOM MyRegisterClass(HINSTANCE hinstance)
{
	WNDCLASSEX wcex;
	UINT       ret0;

	wcex.cbSize = sizeof(WNDCLASSEX);
	wcex.style = CS_HREDRAW | CS_VREDRAW;
	wcex.lpfnWndProc = WndProc;
	wcex.cbClsExtra = 0;
	wcex.cbWndExtra = 0;
	wcex.hInstance = hinstance;
	wcex.hIcon = LoadIcon(hinstance, MAKEINTRESOURCE(IDI_ICON1));
	wcex.hCursor = LoadCursor(NULL, IDC_ARROW);
	wcex.hbrBackground = (HBRUSH)(COLOR_WINDOW + 1);
	wcex.lpszMenuName = MAKEINTRESOURCE(IDC_IRXCT);
	wcex.lpszClassName = szWindowClass;
	wcex.hIconSm = LoadIcon(wcex.hInstance, MAKEINTRESOURCE(IDI_ICON1));

	ret0 = RegisterClassEx(&wcex);
	if (ret0 == 0)
	{
		return 0;
	}

	wcex.lpfnWndProc = Wndproc;
	wcex.hbrBackground = (HBRUSH)CreateSolidBrush(RGB(250, 250, 250));
	swprintf_s(szChildClass1, _CVTBUFSIZE, TEXT("child1"));
	wcex.lpszClassName = szChildClass1;

	ret0 = RegisterClassEx(&wcex);
	if (ret0 == 0)
	{
		return 0;
	}

	wcex.lpfnWndProc = wndproc;
	wcex.hbrBackground = (HBRUSH)CreateSolidBrush(RGB(250, 250, 250));
	swprintf_s(szChildClassS, _CVTBUFSIZE, TEXT("childS"));
	wcex.lpszClassName = szChildClassS;

	ret0 = RegisterClassEx(&wcex);
	if (ret0 == 0)
	{
		return 0;
	}

	wcex.lpfnWndProc = wndProc;
	wcex.hbrBackground = (HBRUSH)CreateSolidBrush(RGB(255, 205, 0));
	swprintf_s(szChildClass2, _CVTBUFSIZE, TEXT("child2"));
	wcex.lpszClassName = szChildClass2;

	ret0 = RegisterClassEx(&wcex);
	if (ret0 == 0)
	{
		return 0;
	}

	wcex.lpfnWndProc = wndconv;
	wcex.hbrBackground = (HBRUSH)CreateSolidBrush(RGB(215, 215, 215));
	swprintf_s(szChildClassC, _CVTBUFSIZE, TEXT("childC"));
	wcex.lpszClassName = szChildClassC;

	ret0 = RegisterClassEx(&wcex);
	if (ret0 == 0)
	{
		return 0;
	}

	return ret0;
}

BOOL InitInstance(HINSTANCE hinstance, int nCmdShow)
{
	hInstance = hinstance;

	HWND hWnd = CreateWindow(szWindowClass, szTitleOfApp1, WS_OVERLAPPEDWINDOW, CW_USEDEFAULT, 0, CW_USEDEFAULT, 0, NULL, NULL, hInstance, NULL);

	if (!hWnd)
	{
		return false;
	}

	ShowWindow(hWnd, SW_SHOWMAXIMIZED);

	return true;
}

LRESULT CALLBACK WndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	static bool                     MAR;
	static HBRUSH                brusht;
	static HBRUSH                brushr;
	static HBRUSH                brushm;
	static HBRUSH                brush1;
	static HBRUSH                brush2;
	static HBRUSH                brush3;
	static HBRUSH                brush4;
	static HBRUSH                brush5;
	static unsigned int         *color5;
	static unsigned int         *color6;
	static unsigned int         *color7;

	static float                TopHalf;
	static bool                 restart;

	static int           nWindowS_width;
	static int           nWindow2_width;
	static int           nWindow1_width;
	static bool               FirstSize;

	static float                     XS;
	static float                     X2;
	static bool                   bSize;

	static unsigned int             alg;
	/*
	static RECT                 rcEdit2;
	*/
	static RECT             rcStatusbar;

	static unsigned int             Ok1;
	static unsigned int             Ok2;

	static unsigned int           maxNI;
	static DWORD          *dwThreadsIds;

	static unsigned int     sizeToolbar;

	static LVCOLUMN                 lvc;
	static LVCOLUMN                 LVC;
	static TCHAR    vallvc[_CVTBUFSIZE];
	static TCHAR    valLVC[_CVTBUFSIZE];

	switch (message)
	{
	case WM_CREATE:
	{
		Oi1 = NULL;
		S   = NULL;
	pixels1 = NULL;
	pixelsS = NULL;

		GPUSelection = 0;

		NI = 0;
		nd = 512;
		nv = 64;
		nx = 512;
		ny = 512;
		d = 1024.0;
		a = 1024.0;
		fv = 0.0;
		lv = 6.283185;
		cor = 0.0;
		ai = false;
		fb = true;

/*
rot is true if rotation is clockwise
*/

		rot = true;
		min1 = 0.0;
		max1 = 0.0;
		duration1 = 0.0;
		duration2 = 0.0;

		currentIteration = NULL;

		restart = true;

		unsigned int i = (_CVTBUFSIZE * sizeof(TCHAR));

		pc = (TCHAR*)malloc(i);
		if (pc == NULL)
		{
			MessageBox(hWnd, TEXT("problem at malloc of pc"), TEXT("!"), MB_OK);

			return -1;
		}
		Pc = (TCHAR*)malloc(i);
		if (Pc == NULL)
		{
			MessageBox(hWnd, TEXT("problem at malloc of Pc"), TEXT("!"), MB_OK);

			return -1;
		}
		Pc = TEXT("idle");
		it = (TCHAR*)malloc(i);
		if (it == NULL)
		{
			MessageBox(hWnd, TEXT("problem at malloc of it"), TEXT("!"), MB_OK);

			return -1;
		}

		nT = GetMaximumProcessorCount(ALL_PROCESSOR_GROUPS);

		HMENU hM1 = GetMenu(hWnd);

		HMENU hM2 = CreateMenu();

		TCHAR buffer[_CVTBUFSIZE];

		swprintf_s(buffer, _CVTBUFSIZE, TEXT("Specify Parallelization ..."));
		AppendMenu(hM2, MF_STRING, IDM_SPECIFYPARALLELIZATION, buffer);
		UGC = false;

		InsertMenu(hM1, 2, MF_POPUP | MF_BYPOSITION, UINT_PTR(hM2), TEXT("&Parallelization"));

		hM2 = CreateMenu();
		AppendMenu(hM2, MF_STRING | MF_CHECKED, IDM_MAR, TEXT("Maintain H-V Ratio"));
		AppendMenu(hM2, MF_STRING,              IDM_RRP, TEXT("Run with Highest Priority"));
		AppendMenu(hM2, MF_STRING | MF_CHECKED, IDM_CLI, TEXT("Calculations using Line Integrals"));
		AppendMenu(hM2, MF_STRING | MF_CHECKED, IDM_SCO, TEXT("Display Reconstruction's Convergence"));

		InsertMenu(hM1, 3, MF_POPUP | MF_BYPOSITION, UINT_PTR(hM2), TEXT("&Options"));

		hM2 = CreateMenu();
		AppendMenu(hM2, MF_STRING | MF_DISABLED, IDM_ADDNOISE, TEXT("Add Noise"));

		InsertMenu(hM1, 4, MF_POPUP | MF_BYPOSITION, UINT_PTR(hM2), TEXT("&Sinogram"));

		hM2 = CreateMenu();
		AppendMenu(hM2, MF_STRING, IDM_GPUSELECTION, TEXT("Select GPU Card ..."));

		InsertMenu(hM1, 5, MF_POPUP | MF_BYPOSITION, UINT_PTR(hM2), TEXT("&GPU"));

		hWndToolbar = CreateWindowEx(0,
			TOOLBARCLASSNAME,
			NULL,
			WS_CHILD | WS_VISIBLE | CCS_NORESIZE,
			0,
			0,
			0,
			0,
			hWnd,
			NULL,
			hInstance,
			NULL);

		hWndEdit2 = CreateWindowEx(0,
			TEXT("EDIT"),
			TEXT("?"),
			WS_CHILD | WS_VISIBLE | ES_READONLY | ES_AUTOHSCROLL,
			0,
			0,
			0,
			0,
			hWndToolbar,
			(HMENU)ID_EDIT2,
			hInstance,
			NULL);

		hWndEdit3 = CreateWindow(
			TEXT("EDIT"),
			TEXT("?"),
			WS_CHILD | WS_VISIBLE | ES_AUTOHSCROLL,
			0,
			0,
			0,
			0,
			hWndToolbar,
			(HMENU)ID_EDIT3,
			hInstance,
			NULL);
		SetWindowText(hWndEdit3, TEXT("0"));

		hWndButtonB = CreateWindow(
			TEXT("BUTTON"),
			TEXT("..."),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_PUSHBUTTON | BS_FLAT,
			0,
			0,
			0,
			0,
			hWndToolbar,
			(HMENU)ID_BUTTONB,
			hInstance,
			NULL);

		hWndButtonI = CreateWindow(
			TEXT("BUTTON"),
			TEXT(" ? "),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_PUSHBUTTON | BS_FLAT,
			0,
			0,
			0,
			0,
			hWndToolbar,
			(HMENU)ID_BUTTONI,
			hInstance,
			NULL);

		hWndButtonH = CreateWindow(
			TEXT("BUTTON"),
			TEXT(" ? "),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_PUSHBUTTON | BS_FLAT,
			0,
			0,
			0,
			0,
			hWndToolbar,
			(HMENU)ID_BUTTONH,
			hInstance,
			NULL);
		EnableWindow(hWndButtonH, false);

		hWndButton1 = CreateWindow(
			TEXT("BUTTON"),
			TEXT("run"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_PUSHBUTTON | BS_FLAT,
			0,
			0,
			0,
			0,
			hWndToolbar,
			(HMENU)ID_BUTTON1,
			hInstance,
			NULL);
		EnableWindow(hWndButton1, false);

		hWndButton2 = CreateWindow(
			TEXT("BUTTON"),
			TEXT("continue"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_PUSHBUTTON | BS_FLAT,
			0,
			0,
			0,
			0,
			hWndToolbar,
			(HMENU)ID_BUTTON2,
			hInstance,
			NULL);
		EnableWindow(hWndButton2, false);

		hWndButton3 = CreateWindow(
			TEXT("BUTTON"),
			TEXT("restart"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_PUSHBUTTON | BS_FLAT,
			0,
			0,
			0,
			0,
			hWndToolbar,
			(HMENU)ID_BUTTON3,
			hInstance,
			NULL);
		EnableWindow(hWndButton3, false);

		hWndButton4 = CreateWindow(
			TEXT("BUTTON"),
			TEXT("+"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_PUSHBUTTON | BS_FLAT,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_BUTTON4,
			hInstance,
			NULL);

		hWndButtonS = CreateWindow(
			TEXT("BUTTON"),
			TEXT("save s"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_PUSHBUTTON | BS_FLAT,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_BUTTONS,
			hInstance,
			NULL);
		EnableWindow(hWndButtonS, false);

		hWndButtonR = CreateWindow(
			TEXT("BUTTON"),
			TEXT("save r"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_PUSHBUTTON | BS_FLAT,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_BUTTONR,
			hInstance,
			NULL);
		EnableWindow(hWndButtonR, false);

		hWndButtonO = CreateWindow(
			TEXT("BUTTON"),
			TEXT("save o"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_PUSHBUTTON | BS_FLAT,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_BUTTONO,
			hInstance,
			NULL);
		EnableWindow(hWndButtonO, false);

		color5 = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);
		(*color5) = 0;
		color6 = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);
		(*color6) = 0;
		color7 = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);
		(*color7) = 0;

		hWndButton5 = CreateWindow(
			TEXT("BUTTON"),
			TEXT("SNR"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_OWNERDRAW,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_BUTTON5,
			hInstance,
			NULL);
		EnableWindow(hWndButton5, true);

		hWndButton6 = CreateWindow(
			TEXT("BUTTON"),
			TEXT("H-plot"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_OWNERDRAW,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_BUTTON6,
			hInstance,
			NULL);
		EnableWindow(hWndButton6, true);

		hWndButton7 = CreateWindow(
			TEXT("BUTTON"),
			TEXT("V-plot"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_OWNERDRAW,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_BUTTON7,
			hInstance,
			NULL);
		EnableWindow(hWndButton7, true);

		/*
		this is to not display the focus rect
		SendMessage( hWndCheckbox1,WM_CHANGEUISTATE,(WPARAM)(0x10001),(LPARAM)(0));
		*/

		hWndStatic1 = CreateWindow(
			TEXT("static"),
			NULL,
			WS_CHILD | WS_VISIBLE | SS_LEFT,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_D,
			hInstance,
			NULL);
		SetWindowText(hWndStatic1, TEXT("  Select the Data>"));

		hWndStatic2 = CreateWindow(
			TEXT("static"),
			NULL,
			WS_CHILD | WS_VISIBLE | SS_LEFT,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_I,
			hInstance,
			NULL);
		SetWindowText(hWndStatic2, TEXT("  # of Iterations>"));

		hWndStatic3 = CreateWindow(
			TEXT("static"),
			NULL,
			WS_CHILD | WS_VISIBLE | SS_LEFT,
			0,
			0,
			0,
			0,
			hWnd,
			NULL,
			hInstance,
			NULL);
		SetWindowText(hWndStatic3, TEXT("  Apply Algorithm>"));

		hWndStatict = CreateWindow(
			TEXT("static"),
			NULL,
			WS_CHILD | WS_VISIBLE | SS_RIGHT,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_T,
			hInstance,
			NULL);

		hWndStaticr = CreateWindow(
			TEXT("static"),
			NULL,
			WS_CHILD | WS_VISIBLE | SS_RIGHT,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_R,
			hInstance,
			NULL);

		hWndStaticM = CreateWindow(
			TEXT("static"),
			NULL,
			WS_CHILD | WS_VISIBLE | SS_RIGHT,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_M,
			hInstance,
			NULL);

		HFONT hFont1 = CreateFont(
			HIWORD(GetDialogBaseUnits()),
			0,
			0,
			0,
			FW_DONTCARE,
			false,
			false,
			false,
			ANSI_CHARSET,
			OUT_DEFAULT_PRECIS,
			CLIP_DEFAULT_PRECIS,
			DEFAULT_QUALITY,
			FIXED_PITCH,
			NULL);

		SendMessage(hWndStatic1, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic2, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic3, WM_SETFONT, WPARAM(hFont1), true);

		hWndStatusbar = CreateWindowEx(0,
			STATUSCLASSNAME,
			NULL,
			WS_CHILD | WS_VISIBLE,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_STATUSBAR1,
			hInstance,
			NULL);

		/*
		SendMessage(hWndStatusbar, SB_SETBKCOLOR, 0, (LPARAM)RGB(255, 255, 0));
		*/

		/*
for splitter:
		*/

		FirstSize = false;
		    bSize = false;

		hWndChildwindow1 = CreateWindowEx(0,
			szChildClass1,
			(LPCTSTR)NULL,
			WS_CHILD | WS_VISIBLE | WS_HSCROLL | WS_VSCROLL,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_CHILDWINDOW1,
			hInstance,
			NULL);
		ShowWindow(hWndChildwindow1, SW_SHOW);

		hWndChildwindowS = CreateWindowEx(0,
			szChildClassS,
			(LPCTSTR)NULL,
			WS_CHILD | WS_VISIBLE | WS_HSCROLL | WS_VSCROLL,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_CHILDWINDOWS,
			hInstance,
			NULL);
		ShowWindow(hWndChildwindowS, SW_SHOW);

		hWndListView1 = CreateWindow(
			WC_LISTVIEW,
			TEXT("report"),
			WS_CHILD | WS_VISIBLE | LVS_REPORT | LVS_EX_GRIDLINES,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_LISTVIEW1,
			hInstance,
			NULL);

		swprintf(vallvc, _CVTBUFSIZE, TEXT("Variable"));
		lvc.mask = LVCF_FMT | LVCF_WIDTH | LVCF_TEXT | LVCF_SUBITEM;
		lvc.fmt = LVCFMT_CENTER;
		lvc.cx = LOWORD(GetDialogBaseUnits()) * 10;
		lvc.pszText = vallvc;
		lvc.iSubItem = 0;
		ListView_InsertColumn(hWndListView1, 0, &lvc);

		swprintf(valLVC, _CVTBUFSIZE, TEXT("Value"));
		LVC.mask = LVCF_FMT | LVCF_WIDTH | LVCF_TEXT | LVCF_SUBITEM;
		LVC.fmt = LVCFMT_CENTER;
		LVC.cx = LOWORD(GetDialogBaseUnits()) * 10;
		LVC.pszText = valLVC;
		LVC.iSubItem = 1;
		ListView_InsertColumn(hWndListView1, 1, &LVC);

		hWndChildwindow2 = CreateWindowEx(0,
			szChildClass2,
			(LPCTSTR)NULL,
			WS_CHILD | WS_VISIBLE | WS_HSCROLL | WS_VSCROLL,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_CHILDWINDOW2,
			hInstance,
			NULL);
		ShowWindow(hWndChildwindow2, SW_SHOW);

		hWndChildwindowC = CreateWindowEx(0,
			szChildClassC,
			(LPCTSTR)NULL,
			WS_CHILD | WS_VISIBLE,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_CHILDWINDOWC,
			hInstance,
			NULL);
		ShowWindow(hWndChildwindowC, SW_SHOW);

		hWndMinimum1 = CreateWindow(
			TEXT("static"),
			NULL,
			WS_CHILD | WS_VISIBLE | SS_CENTER,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_STATICMINIMUM1,
			hInstance,
			NULL);
		SetWindowText(hWndMinimum1, TEXT("?"));

		hWndMaximum1 = CreateWindow(
			TEXT("static"),
			TEXT("?"),
			WS_CHILD | WS_VISIBLE | SS_CENTER,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_STATICMAXIMUM1,
			hInstance,
			NULL);
		SetWindowText(hWndMaximum1, TEXT("?"));

		hWndApplylog = CreateWindow(TEXT("BUTTON"),
			TEXT("Enhance Plot's Visualization"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_AUTOCHECKBOX | BS_CENTER,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_BUTTONAPPLYLOG,
			hInstance,
			NULL);

		hWndEdit1 = CreateWindowEx(0,
			TEXT("EDIT"),
			TEXT(""),
			WS_CHILD | WS_VISIBLE | WS_VSCROLL | ES_RIGHT | ES_MULTILINE | ES_AUTOVSCROLL | ES_READONLY,
			0,
			0,
			0,
			0,
			hWnd,
			(HMENU)ID_EDIT1,
			hInstance,
			NULL);
		SendMessage(hWndEdit1, WM_SETFONT, (WPARAM)hFont1, 0);

		MAR     =  true;
		SMO     = false;
		alg     =     1;
		UPDATE  =  true;
		TopHalf =  0.85;
		maxNI   = 99999;

		brusht = CreateSolidBrush(RGB(255, 255, 0));
		brushr = CreateSolidBrush(RGB(255, 255, 0));
		brushm = CreateSolidBrush(RGB(255, 255, 0));
		brush1 = CreateSolidBrush(RGB(255, 255, 0));
		brush2 = CreateSolidBrush(RGB(255, 205, 0));
		brush3 = CreateSolidBrush(RGB(255, 255, 0));
		brush4 = CreateSolidBrush(RGB(255, 205, 0));
		brush5 = CreateSolidBrush(RGB(127,127,127));

		ghEvent1 = CreateEvent(NULL, true, false, TEXT("e1"));
		ghEvent2 = CreateEvent(NULL, true, false, TEXT("e2"));
		ghEvent3 = CreateEvent(NULL, true, false, TEXT("e3"));
		ghEvent4 = CreateEvent(NULL, true, false, TEXT("e4"));
		ghEvent5 = CreateEvent(NULL, true, false, TEXT("e5"));
		ghEvent6 = CreateEvent(NULL, true, false, TEXT("e6"));

		NofU       = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);
		nofu       = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);
		lastButton = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);

		InterlockedExchange(lastButton, 5);

		SetTimer(hWnd, 3, 500, NULL);

		/*
		unsigned int hi = 2;

		HeapSetInformation(
			GetProcessHeap(),
			HeapCompatibilityInformation,
			&hi,
			sizeof(hi));

		HeapCompact(GetProcessHeap(), 0);
		*/

		int n;
		if (cudaGetDeviceCount(&n) == cudaSuccess)
		{
			cudaDeviceProp cDP;
			cudaGetDeviceProperties(&cDP, 0);

			/*
The Tesla and Fermi architectures are no longer supported starting with CUDA 7.0 and CUDA 9.0, respectively.
			*/

			if (n > 0)
			{
				unsigned int N = 0;
				for (i = 0; i < n; i++)
				{
					cudaGetDeviceProperties(&cDP, i);

					if ((cDP.major >= 3) && (cDP.major <= 7))
					{
						N++;
					}
				}

				nofGPUs = N;
			}
			else
			{
				nofGPUs = 0;
			}
		}
		else
		{
			nofGPUs = 0;
		}

		if (nofGPUs == 0)
		{
			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 5), IDM_GPUSELECTION,           MF_DISABLED | MF_GRAYED);

			MessageBox(hWnd, TEXT("There are no GPU cards supported, so work is to be done only with CPUs.."), TEXT("i"), MB_OK);
		}
	}

	break;
	case WM_CTLCOLORSTATIC:
	{
		HWND hwnd = (HWND)lParam;
		HDC hdclocal = (HDC)wParam;

		switch (GetWindowLong(hwnd, GWL_ID))
		{
		case ID_T:
		{
			SetBkColor(hdclocal, RGB(255, 255, 0));
		}
		return (LRESULT)brusht;
		case ID_R:
		{
			SetBkColor(hdclocal, RGB(255, 255, 0));
		}
		return (LRESULT)brushr;
		case ID_L:
		{
			SetBkColor(hdclocal, RGB(255, 255, 0));
		}
		return (LRESULT)brushm;
		case ID_STATICMINIMUM1:
		{
			SetBkColor(hdclocal, RGB(255,255,0));
			SetTextColor(hdclocal, RGB(255, 0, 0));
		}
		return (LRESULT)brush3;
		case ID_STATICMAXIMUM1:
		{
			SetBkColor(hdclocal, RGB(255, 205, 0));
			SetTextColor(hdclocal, RGB(255, 0, 0));
		}
		return (LRESULT)brush4;
		case ID_BUTTONAPPLYLOG:
		{
			SetBkColor(hdclocal, RGB(127,127,127));
			SetTextColor(hdclocal, RGB(255, 255, 255));
		}
		return (LRESULT)brush5;
		case ID_M:
		{
			SetBkColor(hdclocal, RGB(255, 255, 0));
		}
		return (LRESULT)brush1;
		case ID_EDIT1:
		{
			SetBkColor(hdclocal, RGB(250, 205, 0));
			SetTextColor(hdclocal, RGB(255, 0, 0));
		}
		return (LRESULT)brush2;
		default:
			break;
		}
	}

	break;
	case WM_CTLCOLORBTN:
	{
		HWND    hwnd = (HWND)lParam;
		HDC hdclocal = (HDC)wParam;

		switch (GetWindowLong(hwnd, GWL_ID))
		{
		case ID_BUTTON5:
		{
			COLORREF color;

			if ((*color5) == 0)
			{
				color = RGB(255, 205, 0);
				SetBkColor(hdclocal, color);
				SetTextColor(hdclocal, RGB(255, 0, 0));
			}
			else
			{
				color = RGB(255, 0, 0);
				SetBkColor(hdclocal, color);
				SetTextColor(hdclocal, RGB(255, 255, 0));
			}

			return (LRESULT)CreateSolidBrush(color);
		}
		case ID_BUTTON6:
		{
			COLORREF color;

			if ((*color6) == 0)
			{
				color = RGB(255, 205, 0);
				SetBkColor(hdclocal, color);
				SetTextColor(hdclocal, RGB(255, 0, 0));
			}
			else
			{
				color = RGB(255, 0, 0);
				SetBkColor(hdclocal, color);
				SetTextColor(hdclocal, RGB(255, 255, 0));
			}

			return (LRESULT)CreateSolidBrush(color);
		}
		case ID_BUTTON7:
		{
			COLORREF color;

			if ((*color7) == 0)
			{
				color = RGB(255, 205, 0);
				SetBkColor(hdclocal, color);
				SetTextColor(hdclocal, RGB(255, 0, 0));
			}
			else
			{
				color = RGB(255, 0, 0);
				SetBkColor(hdclocal, color);
				SetTextColor(hdclocal, RGB(255, 255, 0));
			}

			return (LRESULT)CreateSolidBrush(color);
		}
		default:
			break;
		}
	}

	break;
	case WM_DRAWITEM:
		switch (wParam)
		{
		case ID_BUTTON5:
		{
			DRAWITEMSTRUCT *pdis = (DRAWITEMSTRUCT*)lParam;

			HPEN hPen = CreatePen(PS_DOT, 1, RGB(0, 0, 255));
			SelectObject(pdis->hDC, hPen);

			RECT rect = pdis->rcItem;
			MoveToEx(pdis->hDC, rect.left, rect.top, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.left, rect.bottom);
			MoveToEx(pdis->hDC, rect.left, rect.bottom - 1, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.right, rect.bottom - 1);
			MoveToEx(pdis->hDC, rect.right - 1, rect.bottom - 1, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.right - 1, rect.top);
			MoveToEx(pdis->hDC, rect.right - 1, rect.top, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.left, rect.top);

			DeleteObject(hPen);

			rect.left += 1;
			rect.top += 1;
			rect.right -= 1;
			rect.bottom -= 1;

			DrawText(pdis->hDC, TEXT("SNR"), -1, &rect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
		}
		break;
		case ID_BUTTON6:
		{
			DRAWITEMSTRUCT *pdis = (DRAWITEMSTRUCT*)lParam;

			HPEN hPen = CreatePen(PS_DOT, 1, RGB(0, 0, 255));
			SelectObject(pdis->hDC, hPen);

			RECT rect = pdis->rcItem;
			MoveToEx(pdis->hDC, rect.left, rect.top, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.left, rect.bottom);
			MoveToEx(pdis->hDC, rect.left, rect.bottom - 1, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.right, rect.bottom - 1);
			MoveToEx(pdis->hDC, rect.right - 1, rect.bottom - 1, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.right - 1, rect.top);
			MoveToEx(pdis->hDC, rect.right - 1, rect.top, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.left, rect.top);

			DeleteObject(hPen);

			rect.left += 1;
			rect.top += 1;
			rect.right -= 1;
			rect.bottom -= 1;

			DrawText(pdis->hDC, TEXT("H-plot"), -1, &rect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
		}
		break;
		case ID_BUTTON7:
		{
			DRAWITEMSTRUCT *pdis = (DRAWITEMSTRUCT*)lParam;

			HPEN hPen = CreatePen(PS_DOT, 1, RGB(0, 0, 255));
			SelectObject(pdis->hDC, hPen);

			RECT rect = pdis->rcItem;
			MoveToEx(pdis->hDC, rect.left, rect.top, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.left, rect.bottom);
			MoveToEx(pdis->hDC, rect.left, rect.bottom - 1, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.right, rect.bottom - 1);
			MoveToEx(pdis->hDC, rect.right - 1, rect.bottom - 1, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.right - 1, rect.top);
			MoveToEx(pdis->hDC, rect.right - 1, rect.top, (LPPOINT)NULL);
			LineTo(pdis->hDC, rect.left, rect.top);

			DeleteObject(hPen);

			rect.left += 1;
			rect.top += 1;
			rect.right -= 1;
			rect.bottom -= 1;

			DrawText(pdis->hDC, TEXT("V-plot"), -1, &rect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
		}
		break;
		case ID_STATUSBAR1:
		{
			LPDRAWITEMSTRUCT p = (LPDRAWITEMSTRUCT)lParam;

			int x = *((int*)(p->itemData));

			if (x == 1)
			{
				size_t fmemory;
				size_t tmemory;

				if (cudaMemGetInfo(&fmemory, &tmemory) == cudaSuccess)
				{
					SetTextColor(p->hDC, RGB(255, 0, 0));

					TCHAR buffer[_CVTBUFSIZE] = TEXT("Memory used on GPU: ");

					TCHAR s1[_CVTBUFSIZE];


					swprintf_s(s1, _CVTBUFSIZE, TEXT("%u"), (unsigned int)((((float)(tmemory - fmemory)) / ((float)tmemory)) * 100.0));

					unsigned int L = (wcsnlen_s(s1, _CVTBUFSIZE) >= 8 ? 0 : (8 - wcsnlen_s(s1, _CVTBUFSIZE)));

					unsigned int i;
					for (i = 0; i < L; i++)
					{
						wcscat_s(buffer, TEXT("*"));
					}

					wcscat_s(buffer, s1);


					swprintf_s(s1, _CVTBUFSIZE, TEXT("%% (%llu KB); Work on GPU:"), (tmemory - fmemory) / 1024);
					wcscat_s(buffer, s1);


					swprintf_s(s1, _CVTBUFSIZE, TEXT("%u"), *WorkGPU);

					L = (wcsnlen_s(s1, _CVTBUFSIZE) >= 8 ? 0 : (8 - wcsnlen_s(s1, _CVTBUFSIZE)));

					for (i = 0; i < L; i++)
					{
						wcscat_s(buffer, TEXT("*"));
					}

					wcscat_s(buffer, s1);


					swprintf_s(s1, _CVTBUFSIZE, TEXT(" (out of a total of "));
					wcscat_s(buffer, s1);


					swprintf_s(s1, _CVTBUFSIZE, TEXT("%u"), er);

					L = (wcsnlen_s(s1, _CVTBUFSIZE) >= 8 ? 0 : (8 - wcsnlen_s(s1, _CVTBUFSIZE)));

					for (i = 0; i < L; i++)
					{
						wcscat_s(buffer, TEXT("*"));
					}

					wcscat_s(buffer, s1);
					wcscat_s(buffer, TEXT(")"));


					DrawText(p->hDC, buffer, _tcslen(buffer), &(p->rcItem), DT_LEFT);
				}
			}
		}
			break;
		default:
			break;
		}

		return true;
	case WM_APP + 5:
	{
		(*color5) = (unsigned int)lParam;
	}

	break;
	case WM_APP + 6:
	{
		(*color6) = (unsigned int)lParam;
	}

	break;
	case WM_APP + 7:
	{
		(*color7) = (unsigned int)lParam;
	}

	break;
	case WM_SIZE:
	{
		int cxChar = LOWORD(GetDialogBaseUnits());
		int cyChar = HIWORD(GetDialogBaseUnits());
		int iW = LOWORD(lParam);
		int W3 = (iW / 3);
		int R3 = (iW % 3);

		if (FirstSize == false)
		{
			FirstSize = true;

			int lSplitter =  (SPLITTER_BAR_WIDTH / 2);
			int rSplitter = ((SPLITTER_BAR_WIDTH / 2) + (SPLITTER_BAR_WIDTH % 2));
			
			nWindowS_width = (W3 + R3 - lSplitter);
			XS = (((float)nWindowS_width) / ((float)iW));

			nWindow2_width = (W3 - SPLITTER_BAR_WIDTH);
			X2 = (((float)nWindow2_width) / ((float)iW));

			nWindow1_width = (W3 - rSplitter);
		}
		else
		{
			nWindowS_width = (W3 + R3);

			nWindow2_width =  W3;

			nWindow1_width =  W3;
		}

		int iH = HIWORD(lParam);
		int iStatic = cxChar * 18;
		int iMiddle = W3 - iStatic;
		int imiddle = W3;
		int posLeft = W3 + R3 + iStatic;

		/*
		unclear how much the margin is, especially for toolbar, so best is to just consider 2 GetSystemMetrics(6) for every control, meanwhile
		*/

		int height1 = cyChar + GetSystemMetrics(6) * 2;

		sizeToolbar = height1 * 3 + GetSystemMetrics(6);
		MoveWindow(hWndToolbar, 0, 0, iW, sizeToolbar, true);

		MoveWindow(hWndEdit2, W3 + R3, 0, imiddle, cyChar, true);
		SendMessage(hWndEdit2, WM_KEYDOWN, VK_HOME, 0);

		MoveWindow(hWndEdit3, W3 + R3, height1, imiddle, cyChar, true);

		MoveWindow(hWndButton1, W3 + R3, height1 * 2, imiddle / 3, cyChar, true);

		MoveWindow(hWndButton2, W3 + R3 + imiddle / 3, height1 * 2, imiddle / 3 + (imiddle % 3), cyChar, true);

		MoveWindow(hWndButton3, W3 + R3 + imiddle / 3 + imiddle / 3 + (imiddle % 3), height1 * 2, imiddle / 3, cyChar, true);

		MoveWindow(hWndStatic1, W3 + R3 - iStatic, GetSystemMetrics(6) * 2, iStatic, cyChar, true);

		MoveWindow(hWndStatic2, W3 + R3 - iStatic, height1 + GetSystemMetrics(6) * 2, iStatic, cyChar, true);

		MoveWindow(hWndStatic3, W3 + R3 - iStatic, height1 * 2 + GetSystemMetrics(6) * 2, iStatic, cyChar, true);

		MoveWindow(hWndButtonB, W3 + R3 + imiddle, 0, cxChar * 3, cyChar, true);

		MoveWindow(hWndButtonI, W3 + R3 + imiddle, height1, cxChar * 3, cyChar, true);

		MoveWindow(hWndButtonH, W3 + R3 + imiddle, height1 * 2, cxChar * 3, cyChar, true);

		SendMessage(hWndStatusbar, WM_SIZE, 0, 0);
		int *Array;
		Array = (int*)malloc(2 * sizeof(int));
		Array[0] = (W3 + R3);
		Array[1] = -1;
		SendMessage(hWndStatusbar, (UINT)SB_SETPARTS,(WPARAM)2, (LPARAM)Array);

		if (restart == true)
		{
			SendMessage(hWndStatusbar, (UINT)SB_SETTEXT, (WPARAM)0, (LPARAM)(LPSTR)Pc);
		}

		GetWindowRect(hWndStatusbar, &rcStatusbar);
		int height2 = rcStatusbar.bottom - rcStatusbar.top;

		int height3 = TopHalf * (iH - sizeToolbar - cyChar - height2);
		int height4 = iH - sizeToolbar - cyChar - height2 - height3;

		unsigned int x = (iMiddle / 3);
		unsigned int r = (iMiddle % 3);
		MoveWindow(hWndStatict, 0, sizeToolbar, W3 + R3, cyChar, true);
		MoveWindow(hWndButtonS, W3 + R3, sizeToolbar, imiddle / 3, cyChar, true);
		MoveWindow(hWndButtonR, W3 + R3 + imiddle / 3, sizeToolbar, imiddle / 3 + (imiddle % 3), cyChar, true);
		MoveWindow(hWndButtonO, W3 + R3 + imiddle / 3 + imiddle / 3 + (imiddle % 3), sizeToolbar, imiddle / 3, cyChar, true);
		MoveWindow(hWndStaticr, posLeft + iMiddle, sizeToolbar, W3, cyChar, true);

		MoveWindow(hWndChildwindowS, 0, sizeToolbar + cyChar, nWindowS_width, height3, true);

		MoveWindow(hWndChildwindow2, nWindowS_width + SPLITTER_BAR_WIDTH, sizeToolbar + cyChar, nWindow2_width, height3, true);

		MoveWindow(hWndChildwindow1, nWindowS_width + nWindow2_width + 2 * SPLITTER_BAR_WIDTH, sizeToolbar + cyChar, nWindow1_width, height3, true);

		/*
		bSize = true;
		InvalidateRect(hWnd, NULL, true);
		UpdateWindow(hWnd);
		*/

		if (SMO == false)
		{
			EnableWindow(hWndChildwindow1, false);
		}

		MoveWindow(hWndButton4, 0, sizeToolbar + cyChar + height3, cyChar, cyChar, true);
		int w = (posLeft - cyChar);
		MoveWindow(hWndMinimum1, cyChar, sizeToolbar + cyChar + height3, w / 3, cyChar, true);
		MoveWindow(hWndMaximum1, cyChar + (w / 3), sizeToolbar + cyChar + height3, w / 3, cyChar, true);
		MoveWindow(hWndApplylog, cyChar + (2 * (w / 3)), sizeToolbar + cyChar + height3, (w / 3) + (w % 3), cyChar, true);
		MoveWindow(hWndButton5, posLeft, sizeToolbar + cyChar + height3, x + r, cyChar, true);
		MoveWindow(hWndButton6, posLeft + x + r, sizeToolbar + cyChar + height3, x, cyChar, true);
		MoveWindow(hWndButton7, posLeft + (x * 2) + r, sizeToolbar + cyChar + height3, x, cyChar, true);
		switch (*lastButton)
		{
		case 5:
			SendMessage(hWnd, WM_APP + 5, NULL, (LPARAM)1);
			InvalidateRect(hWndButton5, NULL, true);
			break;
		case 6:
			SendMessage(hWnd, WM_APP + 6, NULL, (LPARAM)1);
			InvalidateRect(hWndButton6, NULL, true);
			break;
		case 7:
			SendMessage(hWnd, WM_APP + 7, NULL, (LPARAM)1);
			InvalidateRect(hWndButton7, NULL, true);
			break;
		}
		MoveWindow(hWndStaticM, posLeft + iMiddle, sizeToolbar + cyChar + height3, iW - posLeft - iMiddle, cyChar, true);

		MoveWindow(hWndEdit1, W3 + R3 + W3, sizeToolbar + cyChar + height3 + cyChar, W3, height4 - cyChar, true);
		SCROLLINFO scr;
		scr.cbSize = sizeof(SCROLLINFO);
		scr.fMask = SIF_RANGE;
		GetScrollInfo(hWndEdit1, SB_VERT, &scr);
		SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

		MoveWindow(hWndListView1, posLeft, sizeToolbar + cyChar + height3 + cyChar, iMiddle, height4 - cyChar, true);
		lvc.cx = ((iMiddle / 3) + (iMiddle % 3));
		ListView_SetColumn(hWndListView1, 0, &lvc);
		LVC.cx = (iMiddle - (iMiddle / 3) - (iMiddle % 3));
		ListView_SetColumn(hWndListView1, 1, &LVC);

		MoveWindow(hWndChildwindowC, 0, sizeToolbar + cyChar + height3 + cyChar, posLeft, height4 - cyChar, true);
	}

	break;
	case WM_SETFOCUS:

		break;
	case WM_APP:
		if (SMO == true)
		{
			SetWindowText(hWndEdit2, TEXT("?"));

			SendMessage(hWndChildwindow1, WM_APP + 8, NULL, (LPARAM)0);
			InvalidateRect(hWndChildwindow1, NULL, true);

			SendMessage(hWndChildwindowS, WM_APP + 1, NULL, (LPARAM)false);
			SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)0);
			InvalidateRect(hWndChildwindowS, NULL, true);

			SendMessage(hWndChildwindow2, WM_APP + 1, NULL, (LPARAM)false);
			SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)0);
			InvalidateRect(hWndChildwindow2, NULL, true);

			SetWindowText(hWndEdit3, TEXT("0"));
			NI = 0;
		}
		else
		{
			SetWindowText(hWndEdit2, TEXT("?"));

			SendMessage(hWndChildwindowS, WM_APP + 1, NULL, (LPARAM)false);
			SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)0);
			InvalidateRect(hWndChildwindowS, NULL, true);

			SendMessage(hWndChildwindow2, WM_APP + 1, NULL, (LPARAM)false);
			SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)0);
			InvalidateRect(hWndChildwindow2, NULL, true);

			SetWindowText(hWndEdit3, TEXT("0"));
			NI = 0;
		}

		break;
	case WM_APP + 20:
	{
		HCURSOR prevCursor = SetCursor(LoadCursor(NULL, IDC_WAIT));

		FILE *f1;
		if (fopen_s(&f1, currentInput, "r") == 0)
		{
			float x;

			int Nofa;

			Nofa = 0;

			int nofa;

			bool OK = true;

			if (SMO == true)
			{
				int nxny;

				nxny = nx * ny;

				while (OK)
				{
					nofa = fscanf_s(f1, "%f", &x);

					if (nofa != 1)
					{
						if (nofa == EOF)
						{
							if (Nofa < nxny)
							{
								OK = false;
							}
							else
							{
								break;
							}
						}
						else
						{
							OK = false;
						}
					}
					else
					{
						Nofa++;

						if (Nofa > nxny)
						{
							OK = false;
						}
					}
				}

				fseek(f1, 0, SEEK_SET);
				fclose(f1);

				if (OK)
				{
					if (fopen_s(&f1, currentInput, "r") == 0)
					{
						unsigned int i;
						unsigned int j;
						unsigned int aux1;

						x = 0.0;

						if (Oi1 == NULL)
						{
							Oi1 = (float*)malloc(nxny * sizeof(float));
						}
						else
						{
							free(Oi1);
							Oi1 = (float*)malloc(nxny * sizeof(float));
						}

						for (j = 0; j < ny; j++)
						{
							for (i = 0; i < nx; i++)
							{
								aux1 = i * ny + j;

								fscanf_s(f1, "%f", &(Oi1[aux1]));

								if (Oi1[aux1] > x)
								{
									x = Oi1[aux1];
								}
							}
						}

						for (j = 0; j < ny; j++)
						{
							for (i = 0; i < nx; i++)
							{
								Oi1[i * ny + j] /= x;
							}
						}

						fclose(f1);

						if (pixels1 == NULL)
						{
							pixels1 = (unsigned char*)malloc(nx * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)));
						}
						else
						{
							SendMessage(hWndChildwindow1, WM_APP + 8, NULL, (LPARAM)5);
							InvalidateRect(hWndChildwindow1, NULL, true);
							UpdateWindow(hWndChildwindow1);

							free(pixels1);
							pixels1 = (unsigned char*)malloc(nx * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)));
						}

						unsigned int aux2;
						unsigned char c;

						aux2 = (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0));

						for (i = 0; i < nx; i++)
						{
							for (j = 0; j < ny; j++)
							{
								c = (unsigned char)(Oi1[i * ny + j] * 255.0);

								aux1 = i * aux2 + 3 * j;
								pixels1[aux1] = c;
								pixels1[aux1 + 1] = c;
								pixels1[aux1 + 2] = c;
							}
						}

						SendMessage(hWndChildwindow1, WM_APP + 8, NULL, (LPARAM)1);
						InvalidateRect(hWndChildwindow1, NULL, true);
						UpdateWindow(hWndChildwindow1);

						SendMessage(hWndChildwindowS, WM_APP + 1, NULL, (LPARAM)true);
						SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)0);
						InvalidateRect(hWndChildwindowS, NULL, true);
						UpdateWindow(hWndChildwindowS);

						SendMessage(hWndChildwindow2, WM_APP + 1, NULL, (LPARAM)true);
						SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)0);
						InvalidateRect(hWndChildwindow2, NULL, true);
						UpdateWindow(hWndChildwindow2);

						SetWindowText(hWndEdit1, TEXT(""));
						SetWindowTextA(hWndEdit2, currentInput);

						EnableWindow(hWndButton1, true);
						EnableWindow(hWndButton2, false);
						EnableWindow(hWndButton3, false);
						EnableWindow(hWndButtonO, true);

						EnableWindow(hWndButtonB, false);
						EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_CLOSEINPUTFILE, MF_ENABLED);
					}
					else
					{
						MessageBox(hWnd, TEXT("problem! at fopen_s"), TEXT("!"), MB_OK);
					}
				}
				else
				{
					TCHAR buffer[_CVTBUFSIZE];

					swprintf_s(buffer, _CVTBUFSIZE, TEXT("Data is not OK !\n\nThe number of read signals is %s than nx * ny = %u\n\nEither choose valid data or change parameters in Geometry menu.."), (Nofa < nxny ? TEXT("lower") : TEXT("higher")), nxny);

					MessageBox(hWnd, buffer, TEXT("i"), MB_OK);

					DialogBox(hInstance, MAKEINTRESOURCE(IDD_DATA), hWnd, WndData);
				}
			}
			else
			{
				int ndnv;

				ndnv = nd * nv;

				while (OK)
				{
					nofa = fscanf_s(f1, "%f", &x);

					if (nofa != 1)
					{
						if (nofa == EOF)
						{
							if (Nofa < ndnv)
							{
								OK = false;
							}
							else
							{
								break;
							}
						}
						else
						{
							OK = false;
						}
					}
					else
					{
						Nofa++;

						if (Nofa > ndnv)
						{
							OK = false;
						}
					}
				}

				fseek(f1, 0, SEEK_SET);
				fclose(f1);

				if (OK)
				{
					if (fopen_s(&f1, currentInput, "r") == 0)
					{
						unsigned int i;
						unsigned int j;
						unsigned int aux1;

						x = 0.0;

						if (S == NULL)
						{
							S = (float*)malloc(ndnv * sizeof(float));
						}
						else
						{
							free(S);
							S = (float*)malloc(ndnv * sizeof(float));
						}

						for (j = 0; j < nv; j++)
						{
							for (i = 0; i < nd; i++)
							{
								aux1 = i * nv + j;

								fscanf_s(f1, "%f", &(S[aux1]));

								if (S[aux1] > x)
								{
									x = S[aux1];
								}
							}
						}

						fclose(f1);

						if (pixelsS == NULL)
						{
							pixelsS = (unsigned char*)malloc(nd * (3 * nv + (((3 * nv) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * nv) % sizeof(DWORD)) : 0)));
						}
						else
						{
							SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)5);
							InvalidateRect(hWndChildwindowS, NULL, true);
							UpdateWindow(hWndChildwindowS);

							free(pixelsS);
							pixelsS = (unsigned char*)malloc(nd * (3 * nv + (((3 * nv) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * nv) % sizeof(DWORD)) : 0)));
						}

						unsigned char c;

						unsigned int aux2;
						aux2 = (3 * nv + (((3 * nv) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * nv) % sizeof(DWORD)) : 0));

						for (i = 0; i < nd; i++)
						{
							for (j = 0; j < nv; j++)
							{
								c = (unsigned char)((S[i * nv + j] / x) * 255.0);

								aux1 = i * aux2 + 3 * j;

								pixelsS[aux1] = c;
								pixelsS[aux1 + 1] = c;
								pixelsS[aux1 + 2] = c;
							}
						}

						SetWindowText(hWndEdit1, TEXT(""));
						SetWindowTextA(hWndEdit2, currentInput);

						SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)1);
						InvalidateRect(hWndChildwindowS, NULL, true);
						UpdateWindow(hWndChildwindowS);

						SendMessage(hWndChildwindow2, WM_APP + 1, NULL, (LPARAM)true);
						SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)0);
						InvalidateRect(hWndChildwindow2, NULL, true);
						UpdateWindow(hWndChildwindow2);

						EnableWindow(hWndButton1, true);
						EnableWindow(hWndButton2, false);
						EnableWindow(hWndButton3, false);
						EnableWindow(hWndButtonS, true);

						EnableWindow(hWndButtonB, false);
						EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_CLOSEINPUTFILE, MF_ENABLED);
					}
					else
					{
						MessageBox(hWnd, TEXT("problem! at fopen_s"), TEXT("!"), MB_OK);
					}
				}
				else
				{
					TCHAR buffer[_CVTBUFSIZE];

					swprintf_s(buffer, _CVTBUFSIZE, TEXT("Data is not OK !\n\nThe number of read signals is %s than nd * nv = %u\n\nEither choose valid data or change parameters in Geometry menu.."), (Nofa < ndnv ? TEXT("lower") : TEXT("higher")), ndnv);

					MessageBox(hWnd, buffer, TEXT("i"), MB_OK);

					DialogBox(hInstance, MAKEINTRESOURCE(IDD_DATA), hWnd, WndData);
				}
			}
		}
		else
		{
			MessageBox(hWnd, TEXT("Problem! at fopen_s"), TEXT("!"), MB_OK);
		}

		SetCursor(prevCursor);
	}
	break;
	case WM_COMMAND:
	{
		unsigned int wmId = LOWORD(wParam);
		unsigned int wmEvent = HIWORD(wParam);

		switch (wmId)
		{
		case ID_BUTTONAPPLYLOG:
		{
			SetFocus(hWnd);

			if (Button_GetCheck(hWndApplylog) == true)
			{
				SendMessage(hWndChildwindowC, WM_APP + 25, NULL, (LPARAM)true);
			}
			else
			{
				SendMessage(hWndChildwindowC, WM_APP + 25, NULL,(LPARAM)false);
			}

			if (UPDATE == true)
			{
				if (currentIteration != NULL)
				{
					if (currentIteration[0] > 0)
					{
						InvalidateRect(hWndChildwindowC, NULL, true);
						UpdateWindow(hWndChildwindowC);
					}
				}
			}
		}

			break;
		case ID_EDIT1:
			HideCaret(hWndEdit1);

			break;
		case ID_BUTTON1:
		{
			SetFocus(hWnd);

			run = true;
			restart = false;

			EnableWindow(hWndButton1, false);
			EnableWindow(hWndButtonB, false);
			EnableWindow(hWndEdit3,   false);

			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), IDM_SMO,                    MF_DISABLED | MF_GRAYED);
			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_CLOSEINPUTFILE,          MF_DISABLED | MF_GRAYED);
			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_ALGORITHM_SART,          MF_DISABLED | MF_GRAYED);
			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_ALGORITHM_SBIR,          MF_DISABLED | MF_GRAYED);
			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 1), IDM_SPECIFYGEOMETRY,        MF_DISABLED | MF_GRAYED);

			unsigned int i;

			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 2), IDM_SPECIFYPARALLELIZATION, MF_DISABLED | MF_GRAYED);

			if (nofGPUs > 0)
			{
				EnableMenuItem(GetSubMenu(GetMenu(hWnd), 5), IDM_GPUSELECTION,       MF_DISABLED | MF_GRAYED);
			}

			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 3), IDM_SCO,                    MF_DISABLED | MF_GRAYED);
			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 3), IDM_CLI,                    MF_DISABLED | MF_GRAYED);
			
			DrawMenuBar(hWnd);

			if (SMO == true)
			{
				Ready = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);
				(*Ready) = 0;

				/*
				prepare for region of interest ------------------------------>

				SendMessage(hWndChildwindow1, WM_APP + 4, NULL, (LPARAM)true);
				*/
			}

			ALREADY = 0;

			unsigned int nxny = nx * ny;
			unsigned int ndnv = nd * nv;

			RI1 = (float*)malloc(nxny * sizeof(float));

			if (alg == 2)
			{
				RIa = (float*)malloc(nxny * sizeof(float));
			}

			mO1 = (float*)malloc(nxny * sizeof(float));
			Z = (INF*)malloc(ndnv * sizeof(INF));

			for (i = 0; i < ndnv; i++)
			{
				Z[i].index = NULL;
				Z[i].intersection = NULL;
			}

			hThreadArray = (HANDLE*)malloc(nT * sizeof(HANDLE));
			dwThreadsIds = (DWORD*)malloc(nT * sizeof(DWORD));

			if (SMO == true)
			{
				SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)2);
				InvalidateRect(hWndChildwindowS, NULL, true);
				UpdateWindow(hWndChildwindowS);
			}

			SendMessage(hWndChildwindow2, WM_APP + 2, NULL, (LPARAM)false);
			SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)2);
			InvalidateRect(hWndChildwindow2, NULL, true);
			UpdateWindow(hWndChildwindow2);
			SendMessage(hWndChildwindow2, WM_APP + 7, NULL, NULL);

			SetWindowText(hWndEdit1, TEXT(""));

			unsigned int j;
			unsigned int aux1;

			std::vector<unsigned int> V;

			if (alg == 1)
			{
				for (i = 0; i < nx; i++)
				{
					aux1 = i * ny;

					for (j = 0; j < ny; j++)
					{
						RI1[aux1] = 0.0;
						mO1[aux1] = 0.0;

						V.push_back(aux1);

						aux1++;
					}
				}
			}
			else
			{
				if (alg == 2)
				{
					for (i = 0; i < nx; i++)
					{
						aux1 = i * ny;

						for (j = 0; j < ny; j++)
						{
							RI1[aux1] = 0.0;
							RIa[aux1] = 0.0;
							mO1[aux1] = 0.0;

							V.push_back(aux1);

							aux1++;
						}
					}
				}
			}

			nIn2 = V.size();
			iIn2 = (unsigned int*)malloc(nIn2 * sizeof(unsigned int));

			for (i = 0; i < nIn2; i++)
			{
				iIn2[i] = V[i];
			}
			V.clear();

			iIn1 = (unsigned int*)malloc(ndnv * sizeof(unsigned int));

			nIn1 = 0;
			for (i = 0; i < nd; i++)
			{
				aux1 = i * nv;
				for (j = 0; j < nv; j++)
				{
					iIn1[nIn1] = aux1 + j;
					nIn1++;
				}
			}

			if (SMO == true)
			{
				S = (float*)malloc(ndnv * sizeof(float));

				for (i = 0; i < nIn1; i++)
				{
					S[iIn1[i]] = 0.0;
				}
			}

			RIv = (float**)malloc(nT * sizeof(float*));
			mOv = (float**)malloc(nT * sizeof(float*));

			for (i = 0; i < nT; i++)
			{
				mOv[i] = (float*)malloc(nxny * sizeof(float));
			}

			busy = (unsigned int*)_aligned_malloc(nT * sizeof(unsigned int), 32);

			start1 = clock();

			InitializeSynchronizationBarrier(&barrier, nT, -1);

			SystemMatrix = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);
			(*SystemMatrix) = 0;

			for (i = 0; i < nT; i++)
			{
				busy[i] = 1;
				if (ai == false)
				{
					hThreadArray[i] = CreateThread(NULL, 0, FL, IntToPtr(i), 0, &dwThreadsIds[i]);
				}
				else
				{
					hThreadArray[i] = CreateThread(NULL, 0, FB, IntToPtr(i), 0, &dwThreadsIds[i]);
				}

				if (hThreadArray[i] == NULL)
				{
					ExitProcess(3);
				}
			}

			Ok1 = 1;
			SetTimer(hWnd, 1, 500, NULL);
		}

		break;
		case ID_BUTTON2:
		{
			SetFocus(hWnd);

			if (NI > 0)
			{
				if ((currentIteration[0] + NI) <= maxNI)
				{
					unsigned int k;

					run = false;

					EnableMenuItem(GetSubMenu(GetMenu(hWnd), 2), IDM_SPECIFYPARALLELIZATION, MF_DISABLED | MF_GRAYED);

					if (nofGPUs > 0)
					{
						EnableMenuItem(GetSubMenu(GetMenu(hWnd), 5), IDM_GPUSELECTION,       MF_DISABLED | MF_GRAYED);
					}

					EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), IDM_SMO,                    MF_DISABLED | MF_GRAYED);
					EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_CLOSEINPUTFILE,          MF_DISABLED | MF_GRAYED);

					DrawMenuBar(hWnd);

					EnableWindow(hWndButton2, false);
					EnableWindow(hWndButton3, false);
					EnableWindow(hWndEdit3, false);
					EnableWindow(hWndButtonR, false);

					SendMessage(hWndChildwindow2, WM_APP + 2, NULL, (LPARAM)false);
					SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)2);
					InvalidateRect(hWndChildwindow2, NULL, true);
					UpdateWindow(hWndChildwindow2);
					SendMessage(hWndChildwindow2, WM_APP + 7, NULL, NULL);

					if (SMO == true)
					{
						InvalidateRect(hWndChildwindow1, NULL, true);
						UpdateWindow(hWndChildwindow1);
					}

					if (UPDATE == true)
					{
						(*NofU) = 0;
						ALREADY = currentIteration[0];
					}

					(*nofu) = 0;

					if (UGC == true)
					{
						cudaError_t err;

						err = cudaSetDevice(GPUSelection);
						if (err != cudaSuccess)
						{
							MessageBox(NULL, TEXT("cudaSetDevice failed.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}

						Gpucalculation = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);
						Gpucalculation[0] = 0;

						cudaEventG = CreateEvent(NULL, TRUE, FALSE, TEXT("eG"));
						if (cudaEventG == NULL)
						{
							MessageBox(NULL, TEXT("CreateEvent failed.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}

						cudaEventg = CreateEvent(NULL, TRUE, FALSE, TEXT("eg"));
						if (cudaEventg == NULL)
						{
							MessageBox(NULL, TEXT("CreateEvent failed.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}

						cudaDeviceProp cDP;
						cudaGetDeviceProperties(&cDP, GPUSelection);

						switch (cDP.major)
						{
						case 3:
							GpuThreads = (192 * cDP.multiProcessorCount);
							break;
						case 5:
							GpuThreads = (128 * cDP.multiProcessorCount);
							break;
						case 6:
							if (cDP.minor == 0)
							{
								GpuThreads = (64 * cDP.multiProcessorCount);
							}
							else
							{
								if ((cDP.minor == 1) || (cDP.minor == 2))
								{
									GpuThreads = (128 * cDP.multiProcessorCount);
								}
							}
							break;
						case 7:
							GpuThreads = (32 * cDP.multiProcessorCount);
							break;
						default:
							break;
						}

						SetTimer(hWnd, 8, 20, NULL);
					}

					if (UPDATE == true)
					{
						if (currentIteration[0] == 0)
						{
							Pixels2 = (unsigned char*)malloc(nx * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)));
							ITv = (float*)malloc(maxNI * sizeof(float));
							ITV = (float*)malloc(maxNI * sizeof(float));
							ri1 = (float*)malloc(nx * ny * sizeof(float));
							itv = (float*)malloc(maxNI * sizeof(float));
						}
						else
						{
							for (k = 0; k < currentIteration[0]; k++)
							{
								ITv[k] = ITV[k];
							}
						}
					}

					hThreadArray = (HANDLE*)malloc(nT * sizeof(HANDLE));
					dwThreadsIds = (DWORD*)malloc(nT * sizeof(DWORD));

					pRI = (float**)malloc(nT * sizeof(float*));

					InitializeSynchronizationBarrier(&barrier, nT, -1);

					busy = (unsigned int*)_aligned_malloc(nT * sizeof(unsigned int), 32);

					start2 = clock();

					if (alg == 1)
					{
						for (k = 0; k < nT; k++)
						{
							busy[k] = 1;

							hThreadArray[k] = CreateThread(NULL, 0, SbIR, IntToPtr(k), 0, &dwThreadsIds[k]);

							if (hThreadArray[k] == NULL)
							{
								ExitProcess(3);
							}
						}
					}
					else
					{
						if (alg == 2)
						{
							for (k = 0; k < nT; k++)
							{
								busy[k] = 1;

								hThreadArray[k] = CreateThread(NULL, 0, SART, IntToPtr(k), 0, &dwThreadsIds[k]);

								if (hThreadArray[k] == NULL)
								{
									ExitProcess(3);
								}
							}
						}
					}

					GetWindowText(hWnd, pc, _CVTBUFSIZE);

					Ok2 = 1;
					SetTimer(hWnd, 2, 500, NULL);

					if (UPDATE == true)
					{
						SetTimer(hWnd, 4, 500, NULL);
					}

					SetTimer(hWnd, 7, 500, NULL);
				}
				else
				{
					TCHAR buffer[_CVTBUFSIZE];
					swprintf_s(buffer, _CVTBUFSIZE, TEXT("the maximum # of iterations is currently set to %u"), maxNI);

					MessageBox(hWnd, buffer, TEXT("!"), MB_OK);
				}
			}
		}

		break;
		case ID_BUTTON3:
		{
			SetFocus(hWnd);
			HCURSOR prevCursor = SetCursor(LoadCursor(NULL, IDC_WAIT));
			restart = true;

			SendMessage((HWND)hWndStatusbar, (UINT)SB_SETTEXT, (WPARAM)(INT)0 | 0, (LPARAM)(LPSTR)Pc);

			free(RI1);
			free(mO1);

			if (alg == 2)
			{
				free(RIa);
			}

			unsigned int i;
			unsigned int aux1 = nd * nv;

			for (i = 0; i < aux1; i++)
			{
				if (Z[i].index != NULL)
				{
					free(Z[i].index);
				}

				if (Z[i].intersection != NULL)
				{
					free(Z[i].intersection);
				}
			}

			free(Z);

			free(iIn1);
			free(iIn2);

			SetWindowText(hWndEdit1, TEXT(""));

			if (SMO == true)
			{
				free(S);
				S = NULL;

				SendMessage(hWndChildwindowS, WM_APP + 1, NULL, (LPARAM)true);
				SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)0);
				InvalidateRect(hWndChildwindowS, NULL, true);
				UpdateWindow(hWndChildwindowS);
				free(pixelsS);
				pixelsS = NULL;
				EnableWindow(hWndButtonS, false);

				SendMessage(hWndChildwindow1, WM_APP + 4, NULL, (LPARAM)false);
				InvalidateRect(hWndChildwindow1, NULL, true);
				UpdateWindow(hWndChildwindow1);
			}

			SendMessage(hWndChildwindow2, WM_APP + 1, NULL, (LPARAM)true);
			SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)0);
			InvalidateRect(hWndChildwindow2, NULL, true);
			UpdateWindow(hWndChildwindow2);
			free(pixels2);

			SendMessage(hWndChildwindow2, WM_APP + 7, NULL, NULL);

			SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)0);
			InvalidateRect(hWndChildwindowC, NULL, true);
			UpdateWindow(hWndChildwindowC);

			SetWindowText(hWndMinimum1, TEXT("?"));
			SetWindowText(hWndMaximum1, TEXT("?"));

			if (UPDATE == true)
			{
				if (currentIteration[0] > 0)
				{
					free(Pixels2);
					free(ITv);
					free(ITV);
					free(ri1);
					free(itv);
				}
			}

			_aligned_free(currentIteration);
			currentIteration = NULL;

			EnableWindow(hWndButton1, true);
			EnableWindow(hWndButton2, false);
			EnableWindow(hWndButton3, false);

			EnableWindow(hWndEdit3, true);

			EnableWindow(hWndButtonR, false);
			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 1), IDM_SPECIFYGEOMETRY, MF_ENABLED);

			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 3), IDM_CLI, MF_ENABLED);
			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 3), IDM_SCO, MF_ENABLED);
			DrawMenuBar(hWnd);

			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_ALGORITHM_SART, MF_ENABLED);
			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_ALGORITHM_SBIR, MF_ENABLED);

			DrawMenuBar(hWnd);
			SetCursor(prevCursor);
		}

		break;
		case ID_BUTTONS:
		{
			SetFocus(hWnd);

			SendMessage(hWndChildwindowS, WM_APP + 5, NULL, NULL);
		}

		break;
		case ID_BUTTONR:
		{
			SetFocus(hWnd);

			SendMessage(hWndChildwindow2, WM_APP + 5, NULL, NULL);
		}

		break;
		case ID_BUTTONO:
		{
			SetFocus(hWnd);

			SendMessage(hWndChildwindow1, WM_APP + 5, NULL, NULL);
		}

		break;
		case ID_BUTTONB:
		{
			SetFocus(hWnd);

			DialogBox(hInstance, MAKEINTRESOURCE(IDD_DATA), hWnd, WndData);
		}

		break;
		case ID_BUTTONI:
		{
			SetFocus(hWnd);

			TCHAR buffer[_CVTBUFSIZE];
			swprintf_s(buffer, _CVTBUFSIZE, TEXT("Number of iterations is currently set to be in the interval [0,%u]"), maxNI);
			MessageBox(hWnd, buffer, TEXT("i"), MB_ICONINFORMATION);
		}

		break;
		case ID_BUTTONH:
		{
			SetFocus(hWnd);
		}

		break;
		case ID_BUTTON4:
			SetFocus(hWnd);

			if (TopHalf == 0.65f)
			{
				TopHalf = 0.85f;
				codeofWM_SIZE(hWnd, TopHalf, sizeToolbar);

				SetWindowText(hWndButton4, TEXT("+"));
			}
			else
			{
				TopHalf = 0.65f;
				codeofWM_SIZE(hWnd, TopHalf, sizeToolbar);

				SetWindowText(hWndButton4, TEXT("-"));
			}

			break;
		case ID_BUTTON5:
			if ((*color5) == 0)
			{
				InterlockedIncrement(color5);

				InvalidateRect(hWndButton5, NULL, true);

				if ((*lastButton) == 6)
				{
					InterlockedDecrement(color6);

					InvalidateRect(hWndButton6, NULL, true);

					SendMessage(hWndChildwindow2, WM_APP + 9, NULL, (LPARAM)6);
				}
				else
				{
					InterlockedDecrement(color7);

					InvalidateRect(hWndButton7, NULL, true);

					SendMessage(hWndChildwindow2, WM_APP + 9, NULL, (LPARAM)7);
				}

				InterlockedExchange(lastButton, 5);
			}

			break;
		case ID_BUTTON6:
			if ((*color6) == 0)
			{
				InterlockedIncrement(color6);

				InvalidateRect(hWndButton6, NULL, true);

				if ((*lastButton) == 5)
				{
					InterlockedDecrement(color5);

					InvalidateRect(hWndButton5, NULL, true);

					SendMessage(hWndChildwindow2, WM_APP + 9, NULL, (LPARAM)5);
				}
				else
				{
					InterlockedDecrement(color7);

					InvalidateRect(hWndButton7, NULL, true);

					SendMessage(hWndChildwindow2, WM_APP + 9, NULL, (LPARAM)7);
				}

				InterlockedExchange(lastButton, 6);
			}

			break;
		case ID_BUTTON7:
			if ((*color7) == 0)
			{
				InterlockedIncrement(color7);

				InvalidateRect(hWndButton7, NULL, true);

				if ((*lastButton) == 5)
				{
					InterlockedDecrement(color5);

					InvalidateRect(hWndButton5, NULL, true);

					SendMessage(hWndChildwindow2, WM_APP + 9, NULL, (LPARAM)5);
				}
				else
				{
					InterlockedDecrement(color6);

					InvalidateRect(hWndButton6, NULL, true);

					SendMessage(hWndChildwindow2, WM_APP + 9, NULL, (LPARAM)6);
				}

				InterlockedExchange(lastButton, 7);
			}

			break;
		case IDM_SMO:
			if (restart == false)
			{
				SendMessage(hWnd, WM_COMMAND, MAKEWPARAM(ID_BUTTON3, NULL), NULL);
			}

			if (SMO == true)
			{
				if (Oi1 != NULL)
				{
					free(Oi1);
					Oi1 = NULL;

					free(pixels1);
					pixels1 = NULL;

					EnableWindow(hWndButtonB, true);
					EnableWindow(hWndButton1, false);
					EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_CLOSEINPUTFILE, MF_DISABLED | MF_GRAYED);
				}

				SMO = false;
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_UNCHECKED);

				SetWindowText(hWndEdit2, TEXT("?"));

				SendMessage(hWndChildwindow1, WM_APP + 8, NULL, (LPARAM)0);
				InvalidateRect(hWndChildwindow1, NULL, true);

				SendMessage(hWndChildwindowS, WM_APP + 1, NULL, (LPARAM)false);
				SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)0);
				InvalidateRect(hWndChildwindowS, NULL, true);

				SendMessage(hWndChildwindow2, WM_APP + 1, NULL, (LPARAM)false);
				SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)0);
				InvalidateRect(hWndChildwindow2, NULL, true);

				SetWindowText(hWndEdit3, TEXT("0"));
				NI = 0;

				EnableWindow(hWndChildwindow1, false);
			}
			else
			{
				if (S != NULL)
				{
					free(S);
					S = NULL;

					free(pixelsS);
					pixelsS = NULL;

					EnableWindow(hWndButtonB, true);
					EnableWindow(hWndButton1, false);
					EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_CLOSEINPUTFILE, MF_DISABLED | MF_GRAYED);
				}

				SMO = true;
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_CHECKED);

				EnableWindow(hWndChildwindow1, true);

				SetWindowText(hWndEdit2, TEXT("?"));

				SendMessage(hWndChildwindow1, WM_APP + 8, NULL, (LPARAM)0);
				InvalidateRect(hWndChildwindow1, NULL, true);

				SendMessage(hWndChildwindowS, WM_APP + 1, NULL, (LPARAM)false);
				SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)0);
				InvalidateRect(hWndChildwindowS, NULL, true);

				SendMessage(hWndChildwindow2, WM_APP + 1, NULL, (LPARAM)false);
				SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)0);
				InvalidateRect(hWndChildwindow2, NULL, true);

				SetWindowText(hWndEdit3, TEXT("0"));
				NI = 0;
			}

			EnableWindow(hWndButtonS, false);
			EnableWindow(hWndButtonR, false);
			EnableWindow(hWndButtonO, false);

			break;
		case ID_CLOSEINPUTFILE:
			if (restart == false)
			{
				SendMessage(hWnd, WM_COMMAND, MAKEWPARAM(ID_BUTTON3, NULL), NULL);
			}

			if (SMO == true)
			{
				if (Oi1 != NULL)
				{
					free(Oi1);
					Oi1 = NULL;

					free(pixels1);
					pixels1 = NULL;

					EnableWindow(hWndButton1, false);
				}
			}
			else
			{
				if (S != NULL)
				{
					free(S);
					S = NULL;

					free(pixelsS);
					pixelsS = NULL;

					EnableWindow(hWndButton1, false);
				}
			}

			SetWindowText(hWndEdit2, TEXT("?"));

			SendMessage(hWndChildwindow1, WM_APP + 8, NULL, (LPARAM)0);
			InvalidateRect(hWndChildwindow1, NULL, true);

			SendMessage(hWndChildwindowS, WM_APP + 1, NULL, (LPARAM)false);
			SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)0);
			InvalidateRect(hWndChildwindowS, NULL, true);

			SendMessage(hWndChildwindow2, WM_APP + 1, NULL, (LPARAM)false);
			SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)0);
			InvalidateRect(hWndChildwindow2, NULL, true);

			EnableWindow(hWndButtonB, true);
			EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_CLOSEINPUTFILE, MF_DISABLED | MF_GRAYED);

			SetWindowText(hWndEdit3, TEXT("0"));
			NI = 0;

			EnableWindow(hWndButtonS, false);
			EnableWindow(hWndButtonR, false);
			EnableWindow(hWndButtonO, false);

			break;
		case ID_ALGORITHM_SART:
		{
			if (alg == 1)
			{
				alg = 2;
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_CHECKED);
				CheckMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_ALGORITHM_SBIR, MF_UNCHECKED);
			}
		}

		break;
		case ID_ALGORITHM_SBIR:
		{
			if (alg == 2)
			{
				alg = 1;
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_CHECKED);
				CheckMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_ALGORITHM_SART, MF_UNCHECKED);
			}
		}

		break;
		case IDM_SPECIFYGEOMETRY:
			DialogBox(hInstance, MAKEINTRESOURCE(IDD_SPECIFYGEOMETRY), hWnd, WndPROC);

			break;
		case IDM_SPECIFYPARALLELIZATION:
			DialogBox(hInstance, MAKEINTRESOURCE(IDD_SPECIFYPARALLELIZATION), hWnd, WndParallelization);

			break;
		case IDM_SCO:
			if (UPDATE == false)
			{
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_CHECKED);

				UPDATE = true;
			}
			else
			{
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_UNCHECKED);

				UPDATE =false;
			}

			break;
		case IDM_MAR:
			if (MAR == false)
			{
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_CHECKED);

				MAR = true;

				SendMessage(hWndChildwindow1, WM_APP, NULL, (LPARAM)MAR);
				InvalidateRect(hWndChildwindow1, NULL, true);
				UpdateWindow(hWndChildwindow1);

				SendMessage(hWndChildwindowS, WM_APP, NULL, (LPARAM)MAR);
				InvalidateRect(hWndChildwindowS, NULL, true);
				UpdateWindow(hWndChildwindowS);

				SendMessage(hWndChildwindow2, WM_APP, NULL, (LPARAM)MAR);
				InvalidateRect(hWndChildwindow2, NULL, true);
				UpdateWindow(hWndChildwindow2);
			}
			else
			{
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_UNCHECKED);

				MAR = false;

				SendMessage(hWndChildwindow1, WM_APP, NULL, (LPARAM)MAR);
				InvalidateRect(hWndChildwindow1, NULL, true);
				UpdateWindow(hWndChildwindow1);

				SendMessage(hWndChildwindowS, WM_APP, NULL, (LPARAM)MAR);
				InvalidateRect(hWndChildwindowS, NULL, true);
				UpdateWindow(hWndChildwindowS);

				SendMessage(hWndChildwindow2, WM_APP, NULL, (LPARAM)MAR);
				InvalidateRect(hWndChildwindow2, NULL, true);
				UpdateWindow(hWndChildwindow2);
			}

			break;
		case IDM_RRP:
		{
			DWORD state = GetMenuState(GetMenu(hWnd), LOWORD(wParam), MF_BYCOMMAND);

			if (!(state & MF_CHECKED))
			{
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_BYCOMMAND | MF_CHECKED);
				SetPriorityClass(GetCurrentProcess(), REALTIME_PRIORITY_CLASS);
			}
			else
			{
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_BYCOMMAND | MF_UNCHECKED);
				SetPriorityClass(GetCurrentProcess(), NORMAL_PRIORITY_CLASS);
			}
		}

		break;
		case IDM_CLI:
			if (ai == true)
			{
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_CHECKED);

				ai = false;
			}
			else
			{
				CheckMenuItem(GetMenu(hWnd), LOWORD(wParam), MF_UNCHECKED);

				ai = true;
			}

			break;
		case IDM_ADDNOISE:
			break;
		case IDM_GPUSELECTION:
			DialogBox(hInstance, MAKEINTRESOURCE(IDD_GPUSELECTION), hWnd, WNDGPU);

			break;
		case ID_EDIT2:
			break;
		case ID_EDIT3:
			if (wmEvent == EN_SETFOCUS)
			{
				PostMessage(hWndEdit3, EM_SETSEL, (WPARAM)0, (LPARAM)-1);
			}
			else
			{
				if (wmEvent == EN_KILLFOCUS)
				{
					TCHAR buffer[_CVTBUFSIZE];

					GetWindowText(hWndEdit3, buffer, _CVTBUFSIZE);

					size_t l;
					int    i;
					bool   N;

					N = true;
					l = wcslen(buffer);

					for (i = 0; i < l; i++)
					{
						if ((buffer[i] < TEXT('0')) || (buffer[i] > TEXT('9')))
						{
							N = false;
							break;
						}
					}

					if (N == true)
					{
						if ((l == 0) || (l > 5))
						{
							N = false;
						}
						else
						{
							if ((l >= 2) && (buffer[0] == TEXT('0')))
							{
								N = false;
							}
						}
					}

					if (N == false)
					{
						MessageBox(hWnd, TEXT("Invalid Number ! Interval Accepted is [0,99999]"), TEXT("?"), MB_OK);

						swprintf_s(buffer, _CVTBUFSIZE, TEXT("%u"), NI);
						SetWindowText(hWndEdit3, buffer);
					}
					else
					{
						NI = _wtoi(buffer);
					}
				}
			}

			break;
		case ID_VIEWHELP:
			/*
			HtmlHelp(GetDesktopWindow(), TEXT("manual.chm"), HH_DISPLAY_TOPIC, NULL);
			*/

			ShellExecute(NULL, _T("open"), _T("manual.chm"), NULL, NULL, SW_NORMAL);

			break;
		case IDM_ABOUT:
			DialogBox(hInstance, MAKEINTRESOURCE(IDD_ABOUTBOX), hWnd, aboutpr);

			break;
		case IDM_EXIT:
			DestroyWindow(hWnd);

			break;
		default:
			return DefWindowProc(hWnd, message, wParam, lParam);
		}
	}
	break;
	case WM_TIMER:
		switch (wParam)
		{
		case 1:
		{
			if (Ok1 == 1)
			{
				unsigned int i;

				for (i = 0; i < nT; i++)
				{
					if (busy[i] == 1)
					{
						TCHAR buffer[_CVTBUFSIZE];

						if (SMO == true)
						{
							swprintf_s(buffer, _CVTBUFSIZE, TEXT("working at sinogram calculation..%u%%"), SystemMatrix[0]);

							SendMessage((HWND)hWndStatusbar, (UINT)SB_SETTEXT, (WPARAM)(INT)0 | 0, (LPARAM)(LPSTR)buffer);
						}
						else
						{
							swprintf_s(buffer, _CVTBUFSIZE, TEXT("-> working at the system matrix..%u%%"), SystemMatrix[0]);

							SendMessage((HWND)hWndStatusbar, (UINT)SB_SETTEXT, (WPARAM)(INT)0 | 0, (LPARAM)(LPSTR)buffer);
						}

						Ok1 = 0;
						break;
					}
				}

				if (Ok1 == 1)
				{
					KillTimer(hWnd, 1);
					Ok1 = 2;

					_aligned_free(SystemMatrix);

					WaitForMultipleObjects(nT, hThreadArray, true, INFINITE);

					unsigned int k;

					for (k = 0; k < nT; k++)
					{
						CloseHandle(hThreadArray[k]);
					}

					for (k = 0; k < nT; k++)
					{
						for (i = 0; i < nIn2; i++)
						{
							mO1[iIn2[i]] += mOv[k][iIn2[i]];
						}
					}

					currentIteration = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);
					currentIteration[0] = 0;

					if (SMO == true)
					{
						SetTimer(hWnd, 6, 500, NULL);
					}

					if (UPDATE == true)
					{
						(*NofU) = 0;
					}

					(*nofu) = 0;

					if (UGC == true)
					{
						cudaError_t err;

						err = cudaSetDevice(GPUSelection);
						if (err != cudaSuccess)
						{
							MessageBox(NULL, TEXT("cudaSetDevice failed.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}

						Gpucalculation = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);
						Gpucalculation[0] = 0;

						cudaEventG = CreateEvent(NULL, TRUE, FALSE, TEXT("eG"));
						if (cudaEventG == NULL)
						{
							MessageBox(NULL, TEXT("CreateEvent failed.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}

						cudaEventg = CreateEvent(NULL, TRUE, FALSE, TEXT("eg"));
						if (cudaEventg == NULL)
						{
							MessageBox(NULL, TEXT("CreateEvent failed.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}

						cudaDeviceProp cDP;
						cudaGetDeviceProperties(&cDP, GPUSelection);

						switch (cDP.major)
						{
						case 3:
							GpuThreads = (192 * cDP.multiProcessorCount);
							break;
						case 5:
							GpuThreads = (128 * cDP.multiProcessorCount);
							break;
						case 6:
							if (cDP.minor == 0)
							{
								GpuThreads = (64 * cDP.multiProcessorCount);
							}
							else
							{
								if ((cDP.minor == 1) || (cDP.minor == 2))
								{
									GpuThreads = (128 * cDP.multiProcessorCount);
								}
							}
							break;
						case 7:
							GpuThreads = (32 * cDP.multiProcessorCount);
							break;
						default:
							break;
						}

						SetTimer(hWnd, 8, 20, NULL);
					}

					if (UPDATE == true)
					{
						if (NI > 0)
						{
							Pixels2 = (unsigned char*)malloc(nx * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)));
							ITv = (float*)malloc(maxNI * sizeof(float));
							ITV = (float*)malloc(maxNI * sizeof(float));
							ri1 = (float*)malloc(nx * ny * sizeof(float));
							itv = (float*)malloc(maxNI * sizeof(float));
						}
					}

					pRI = (float**)malloc(nT * sizeof(float*));

					start2 = clock();

					if (alg == 1)
					{
						for (k = 0; k < nT; k++)
						{
							busy[k] = 1;
							hThreadArray[k] = CreateThread(NULL, 0, SbIR, IntToPtr(k), 0, &dwThreadsIds[k]);

							if (hThreadArray[k] == NULL)
							{
								ExitProcess(3);
							}
						}
					}
					else
					{
						if (alg == 2)
						{
							for (k = 0; k < nT; k++)
							{
								busy[k] = 1;
								hThreadArray[k] = CreateThread(NULL, 0, SART, IntToPtr(k), 0, &dwThreadsIds[k]);

								if (hThreadArray[k] == NULL)
								{
									ExitProcess(3);
								}
							}
						}
					}

					GetWindowText(hWnd, pc, _CVTBUFSIZE);

					Ok2 = 1;
					SetTimer(hWnd, 2, 500, NULL);

					if (UPDATE == true)
					{
						if (NI > 0)
						{
							SetTimer(hWnd, 4, 500, NULL);
						}
					}

					SetTimer(hWnd, 7, 500, NULL);
				}
				else
				{
					Ok1 = 1;
				}
			}
		}

		break;
		case 2:
		{
			if (Ok2 == 1)
			{
				unsigned int i;

				for (i = 0; i < nT; i++)
				{
					if (busy[i] == 1)
					{
						Ok2 = 0;

						swprintf_s(it, _CVTBUFSIZE, TEXT("%u"), *currentIteration);

						SetWindowText(hWnd, it);
						SendMessage((HWND)hWndStatusbar, (UINT)SB_SETTEXT, (WPARAM)(INT)0 | 0, (LPARAM)(LPSTR)it);

						break;
					}
				}

				if (Ok2 == 1)
				{
					KillTimer(hWnd, 2);
					Ok2 = 2;

					WaitForMultipleObjects(nT, hThreadArray, true, INFINITE);

					finish = clock();

					for (i = 0; i < nT; i++)
					{
						CloseHandle(hThreadArray[i]);
					}

					if (UGC == true)
					{
						CloseHandle(cudaEventG);
						CloseHandle(cudaEventg);
					}

					DeleteSynchronizationBarrier(&barrier);

					if (UGC == true)
					{
						if (er > 0)
						{
							cudaFree(dRI1);
							cudaFree(dCounts);
							cudaFree(dindices);
							cudaFree(dIntersections);
							cudaFree(dSumsOfIntersections);
							cudaFree(dS);
							cudaFree(dparameters);

							_aligned_free(g_TargetValue);

							KillTimer(hWnd, 9);
							SendMessage(hWndStatusbar, (UINT)SB_SETTEXT, (WPARAM)1, (LPARAM)(LPSTR)TEXT(""));
						}

						cudaError_t err;

						err = cudaDeviceReset();
						if (err != cudaSuccess)
						{
							MessageBox(NULL, TEXT("Failed at cudaDeviceReset.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}

						if (er > 0)
						{
							free(pri[0]);							
							free(pri);
						}

						_aligned_free(Gpucalculation);
					}

					if (run == true)
					{
						if (RIv)
						{
							for (i = 0; i < nT; i++)
							{
								if (RIv[i])
								{
									free(RIv[i]);
								}
							}

							free(RIv);
							RIv = NULL;
						}

						if (mOv)
						{
							for (i = 0; i < nT; i++)
							{
								if (mOv[i])
								{
									free(mOv[i]);
								}
							}

							free(mOv);
							mOv = NULL;
						}
					}

					if (pRI)
					{
						for (i = 0; i < nT; i++)
						{
							if (pRI[i])
							{
								free(pRI[i]);
							}
						}

						free(pRI);
						pRI = NULL;
					}

					_aligned_free(busy);
					busy = NULL;

					if ((UGC == true) && (er > 0))
					{
						_aligned_free(WorkGPU);
						WorkGPU = NULL;
					}

					free(hThreadArray);
					hThreadArray = NULL;

					free(dwThreadsIds);
					dwThreadsIds = NULL;

					if (run == true)
					{
						duration1 = (float)((start2 - start1) / CLOCKS_PER_SEC);
						duration2 = (float)((finish - start2) / CLOCKS_PER_SEC);
					}
					else
					{
						duration2+= (float)((finish - start2) / CLOCKS_PER_SEC);
					}

					if (UPDATE == true)
					{
						if (NI > 0)
						{
							KillTimer(hWnd, 4);
						}
					}

					KillTimer(hWnd, 7);

					min1 = RI1[iIn2[0]];
					for (i = 0; i < nIn2; i++)
					{
						if (RI1[iIn2[i]] < min1)
						{
							min1 = RI1[iIn2[i]];
						}
					}

					for (i = 0; i < nIn2; i++)
					{
						/*
						RI1[iIn2[i]] -= min1;
						*/

						if (RI1[iIn2[i]] < 0.0)
						{
							RI1[iIn2[i]] = 0.0;
						}
					}

					max1 = RI1[iIn2[0]];
					for (i = 1; i < nIn2; i++)
					{
						if (RI1[iIn2[i]] > max1)
						{
							max1 = RI1[iIn2[i]];
						}
					}

					unsigned int aux2;

					aux2 = (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0));

					unsigned int j;
					unsigned int aux1;
					unsigned char c;

					/*
					checking if pixels2 is NULL, so that we don't allocate at continue --->
					*/
					if (run == true)
					{
						pixels2 = (unsigned char*)malloc(nx * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)));
					}

					for (i = 0; i < nx; i++)
					{
						for (j = 0; j < ny; j++)
						{
							c = (unsigned char)((RI1[i * ny + j] / max1) * 255.0);

							aux1 = i * aux2 + 3 * j;
							pixels2[aux1] = c;
							pixels2[aux1 + 1] = c;
							pixels2[aux1 + 2] = c;
						}
					}

					SendMessage(hWndChildwindow2, WM_APP + 8, NULL, (LPARAM)1);
					InvalidateRect(hWndChildwindow2, NULL, true);
					UpdateWindow(hWndChildwindow2);
					EnableWindow(hWndButtonR, true);

					SetWindowText(hWnd, pc);
					SendMessage((HWND)hWndStatusbar, (UINT)SB_SETTEXT, (WPARAM)(INT)0 | 0, (LPARAM)(LPSTR)Pc);
					
					TCHAR report[5 * _CVTBUFSIZE];

					TCHAR nofITs[_CVTBUFSIZE];

					swprintf_s(nofITs, _CVTBUFSIZE, TEXT("%u"), currentIteration[0]);

					TCHAR NofITs[_CVTBUFSIZE] = TEXT("");

					unsigned int L = (wcsnlen_s(nofITs, _CVTBUFSIZE) >= 24 ? 0 : (24 - wcsnlen_s(nofITs, _CVTBUFSIZE)));

					for (i = 0; i < L; i++)
					{
						wcscat_s(NofITs, TEXT("*"));
					}

					wcscat_s(NofITs, nofITs);

					swprintf_s(report, 5 * _CVTBUFSIZE, TEXT("\r\n\r\nreport after %s iterations\r\n------------------------------------------------\r\n\r\ntime 1: %040.12lf\r\n(time 1 -> time taken to calculate the sinogram)\r\n\r\ntime 2: %040.12lf\r\n(time 2 is the time taken to run the iterations)\r\n\r\nmin --> %040.12lf\r\n(min is the minimum value in the reconstruction)\r\n\r\nmax --> %040.12lf\r\n(max is the maximum value in the reconstruction)"), NofITs, duration1, duration2, min1, max1);

					int n = GetWindowTextLength(hWndEdit1);

					TCHAR *buffer = NULL;

					buffer = (TCHAR*)malloc((n + 1 + wcslen(report)) * sizeof(TCHAR));

					GetWindowText(hWndEdit1, buffer, n + 1);

					wcscat_s(buffer, n + 1 + wcslen(report), report);

					SetWindowText(hWndEdit1, buffer);

					SCROLLINFO scr;
					scr.cbSize = sizeof(SCROLLINFO);
					scr.fMask = SIF_RANGE;
					GetScrollInfo(hWndEdit1, SB_VERT, &scr);
					SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

					free(buffer);

					FILE *f1;

					char output1[_CVTBUFSIZE];

					SYSTEMTIME st;

					GetSystemTime(&st);

					sprintf_s(output1, _CVTBUFSIZE, "filetype=2-lins=%04u-cols=%04u-date=%02d.%02d.%04d-time=%02d.%02d.%02d.txt", nx, ny, st.wDay, st.wMonth, st.wYear, st.wHour, st.wMinute, st.wSecond);

					if (fopen_s(&f1, output1, "w") == 0)
					{
						aux1 = nx * ny;

						for (i = 0; i < aux1; i++)
						{
							fwprintf_s(f1, TEXT("%f\n"), RI1[i]);
						}
						fclose(f1);
					}
					else
					{
						MessageBox(hWnd, TEXT("problem! ..."), TEXT("!"), MB_OK);
					}

					sprintf_s(output1, _CVTBUFSIZE, "filetype=3-lins=%04u-cols=%04u-date=%02d.%02d.%04d-time=%02d.%02d.%02d.txt", nd, nv, st.wDay, st.wMonth, st.wYear, st.wHour, st.wMinute, st.wSecond);

					if (fopen_s(&f1, output1, "w") == 0)
					{
						for (j = 0; j < nv; j++)
						{
							for (i = 0; i < nd; i++)
							{
								fwprintf_s(f1, TEXT("%f\n"), S[i * nv + j]);
							}
						}
						fclose(f1);
					}
					else
					{
						MessageBox(hWnd, TEXT("problem!"), TEXT("!"), MB_OK);
					}

					EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), IDM_SMO,                        MF_ENABLED);
					EnableMenuItem(GetSubMenu(GetMenu(hWnd), 0), ID_CLOSEINPUTFILE,              MF_ENABLED);
					EnableWindow(hWndButton2, true);
					EnableWindow(hWndButton3, true);
					EnableWindow(hWndEdit3,   true);

					EnableMenuItem(GetSubMenu(GetMenu(hWnd), 2), IDM_SPECIFYPARALLELIZATION,     MF_ENABLED);

					if (nofGPUs > 0)
					{
						EnableMenuItem(GetSubMenu(GetMenu(hWnd), 5), IDM_GPUSELECTION,           MF_ENABLED);
					}

					DrawMenuBar(hWnd);

					if (GetActiveWindow() != hWnd)
					{
						FlashWindow(hWnd, true);
					}
				}
				else
				{
					Ok2 = 1;
				}
			}
		}

		break;
		case 3:
		{
			PROCESS_MEMORY_COUNTERS pmc;
			GetProcessMemoryInfo(GetCurrentProcess(), &pmc, sizeof(pmc));

			TCHAR buffer[_CVTBUFSIZE];

			swprintf_s(buffer, _CVTBUFSIZE, TEXT("%20u KB (total memory usage)"), pmc.WorkingSetSize / 1024);
			SetWindowText(hWndStaticM, buffer);
		}

			break;
		case 6:
			if ((*Ready) == 1)
			{
				KillTimer(hWnd, 6);
				_aligned_free(Ready);

				pixelsS = (unsigned char*)malloc(nd * (3 * nv + (((3 * nv) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * nv) % sizeof(DWORD)) : 0)));

				unsigned int i;

				float maxSinogram = 0.0;

				for (i = 0; i < nIn1; i++)
				{
					if (S[iIn1[i]] > maxSinogram)
					{
						maxSinogram = S[iIn1[i]];
					}
				}

				unsigned int j;
				unsigned int aux1;
				unsigned int aux2;

				unsigned char c;

				aux2 = (3 * nv + (((3 * nv) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * nv) % sizeof(DWORD)) : 0));

				for (i = 0; i < nd; i++)
				{
					for (j = 0; j < nv; j++)
					{
						c = (unsigned char)((S[i * nv + j] / maxSinogram) * 255.0);
						aux1 = i * aux2 + 3 * j;
						pixelsS[aux1] = c;
						pixelsS[aux1 + 1] = c;
						pixelsS[aux1 + 2] = c;
					}
				}

				SendMessage(hWndChildwindowS, WM_APP + 8, NULL, (LPARAM)1);
				InvalidateRect(hWndChildwindowS, NULL, true);
				UpdateWindow(hWndChildwindowS);
				EnableWindow(hWndButtonS, true);
			}

			break;
		case 4:
			if (((*NofU) % 3) == 1)
			{
				unsigned int i;
				unsigned int j;
				unsigned int aux1;

				float max1;

				for (i = 0; i < nIn2; i++)
				{
					/*
					RI1[iIn2[i]] -= min1;
					*/

					if (ri1[iIn2[i]] < 0.0)
					{
						ri1[iIn2[i]] = 0.0;
					}
				}

				max1 = ri1[iIn2[0]];
				for (i = 1; i < nIn2; i++)
				{
					if (ri1[iIn2[i]] > max1)
					{
						max1 = ri1[iIn2[i]];
					}
				}

				unsigned char c;

				SendMessage(hWndChildwindow2, WM_APP + 2, NULL, (LPARAM)false);

				unsigned int aux2 = (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0));

				for (i = 0; i < nx; i++)
				{
					for (j = 0; j < ny; j++)
					{
						c = (unsigned char)((ri1[i * ny + j] / max1) * 255.0);

						aux1 = i * aux2 + 3 * j;
						Pixels2[aux1] = c;
						Pixels2[aux1 + 1] = c;
						Pixels2[aux1 + 2] = c;
					}
				}

				SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)0);

				nIT = nit;

				for (i = 0; i < nIT; i++)
				{
					ITv[ALREADY + i] = itv[ALREADY + i];
				}

				InterlockedIncrement(NofU);

				ResetEvent(ghEvent1);
				SendMessage(hWndChildwindow2, WM_APP + 2, NULL, (LPARAM)true);
				InvalidateRect(hWndChildwindow2, NULL, false);
				UpdateWindow(hWndChildwindow2);

				ResetEvent(ghEvent2);
				SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)1);
				InvalidateRect(hWndChildwindowC, NULL, true);
				UpdateWindow(hWndChildwindowC);

				if (WaitForSingleObject(ghEvent1, 0L) == WAIT_OBJECT_0)
				{
					if (WaitForSingleObject(ghEvent2, 0L) == WAIT_OBJECT_0)
					{
						SetEvent(ghEvent5);

						InterlockedIncrement(NofU);
					}
				}
			}
			else
				if (((*NofU) % 3) == 2)
				{
					if (WaitForSingleObject(ghEvent1, 0L) == WAIT_OBJECT_0)
					{
						if (WaitForSingleObject(ghEvent2, 0L) == WAIT_OBJECT_0)
						{
							SetEvent(ghEvent5);

							InterlockedIncrement(NofU);
						}
					}
				}

			break;
		case 7:
			if (((*nofu) % 2) == 1)
			{
				int n = GetWindowTextLength(hWndEdit1);
				TCHAR *buffer = NULL;

				buffer = (TCHAR*)malloc((n + 1 + wcslen(oe)) * sizeof(TCHAR));

				GetWindowText(hWndEdit1, buffer, n + 1);

				wcscat_s(buffer, n + 1 + wcslen(oe), oe);

				SetWindowText(hWndEdit1, buffer);

				SCROLLINFO scr;
				scr.cbSize = sizeof(SCROLLINFO);
				scr.fMask = SIF_RANGE;
				GetScrollInfo(hWndEdit1, SB_VERT, &scr);
				SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

				free(buffer);

				SetEvent(ghEvent6);

				InterlockedDecrement(nofu);
			}

			break;
		case 8:
		{
			if (Gpucalculation[0] == 0)
			{
				if (WaitForSingleObject(cudaEventG, 0) == WAIT_OBJECT_0)
				{
					KillTimer(hWnd, 8);
					InterlockedIncrement(Gpucalculation);
					ResetEvent(cudaEventG);

					if (Gpucalculation[0] == 1)
					{
						unsigned int i;

						size_t fmemory;
						size_t tmemory;

						cudaMemGetInfo(&fmemory, &tmemory);

						size_t u5 = (size_t)(((float)tmemory) * 0.20f);
						size_t fMemory;

						fMemory = fmemory;

						if (u5 >= fMemory)
						{
							MessageBox(hWnd, TEXT("Not enough memory on GPU, so work will be done only on CPU.."), TEXT("i"), MB_OK);

							er = 0;
						}
						else
						{
							size_t M;

							M = (MAX * sizeof(int) + 2 * MAX * sizeof(float));

							fMemory -= u5;

							er = (nIn1 <= (fMemory / M) ? nIn1 : (fMemory / M));

							if (er >= GpuThreads)
							{
								WorkGPU = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);

								DialogBox(hInstance, MAKEINTRESOURCE(IDD_GPU), hWnd, WndGPU);

								SetTimer(hWnd, 9, 500, NULL);
							}
							else
							{
								er = 0;

								if (nIn1 < GpuThreads)
								{
									MessageBox(hWnd, TEXT("Very small amount of work for GPU, so work is done with CPU."), TEXT("i"), MB_OK);
								}
								else
								{
									MessageBox(hWnd, TEXT("Not enough memory on GPU, so work will be done only on CPU.."), TEXT("i"), MB_OK);
								}
							}
						}

						SetEvent(cudaEventg);

						for (i = 1; i < nT; i++)
						{
							ResumeThread(hThreadArray[i]);
						}
					}
				}
			}
		}
			break;
		case 9:
		{
			/*
			size_t fmemory;
			size_t tmemory;
			TCHAR buffer[_CVTBUFSIZE] = TEXT("Memory used on GPU: ");

			cudaMemGetInfo(&fmemory, &tmemory);

			TCHAR s1[_CVTBUFSIZE];


			swprintf_s(s1, _CVTBUFSIZE, TEXT("%u"), (unsigned int)((((float)(tmemory - fmemory)) / ((float)tmemory)) * 100.0));
			
			unsigned int L = (wcsnlen_s(s1, _CVTBUFSIZE) >= 8 ? 0 : (8 - wcsnlen_s(s1, _CVTBUFSIZE)));

			unsigned int i;
			for (i = 0; i < L; i++)
			{
				wcscat_s(buffer, TEXT("*"));
			}

			wcscat_s(buffer, s1);


			swprintf_s(s1, _CVTBUFSIZE, TEXT("%% (%llu KB); Work on GPU:"), (tmemory - fmemory) / 1024);
			wcscat_s(buffer, s1);


			swprintf_s(s1, _CVTBUFSIZE, TEXT("%u"), *WorkGPU);

			L = (wcsnlen_s(s1, _CVTBUFSIZE) >= 8 ? 0 : (8 - wcsnlen_s(s1, _CVTBUFSIZE)));

			for (i = 0; i < L; i++)
			{
				wcscat_s(buffer, TEXT("*"));
			}

			wcscat_s(buffer, s1);


			swprintf_s(s1, _CVTBUFSIZE, TEXT(" (out of a total of "));
			wcscat_s(buffer, s1);


			swprintf_s(s1, _CVTBUFSIZE, TEXT("%u"), er);

			L = (wcsnlen_s(s1, _CVTBUFSIZE) >= 8 ? 0 : (8 - wcsnlen_s(s1, _CVTBUFSIZE)));

			for (i = 0; i < L; i++)
			{
				wcscat_s(buffer, TEXT("*"));
			}

			wcscat_s(buffer, s1);
			wcscat_s(buffer, TEXT(")"));
			*/

			int x;
			x = 1;

			SendMessage(hWndStatusbar, (UINT)SB_SETTEXT, (WPARAM)(INT)(1 | SBT_OWNERDRAW), (LPARAM)&x);
		}

		break;
		default:
			break;
		}

		break;
	case WM_DESTROY:
	{
		HCURSOR prevCursor = SetCursor(LoadCursor(NULL, IDC_WAIT));

		if (SMO == true)
		{
			if (Oi1 != NULL)
			{
				free(Oi1);
			}


			if (pixels1 != NULL)
			{
				free(pixels1);
			}
		}
		else
		{
			if (S != NULL)
			{
				free(S);
			}

			if (pixelsS != NULL)
			{
				free(pixelsS);
			}
		}

		free(pc);
		free(Pc);
		free(it);

		_aligned_free(color5);
		_aligned_free(color6);
		_aligned_free(color7);
		_aligned_free(NofU);
		_aligned_free(nofu);
		_aligned_free(lastButton);

		SetCursor(prevCursor);

		PostQuitMessage(0);
	}

	break;
	default:
		return DefWindowProc(hWnd, message, wParam, lParam);
	}
	return 0;
}

void codeofWM_SIZE(HWND hWnd, float tophalf, unsigned int sizeToolbar)
{
	int cxChar = LOWORD(GetDialogBaseUnits());
	int cyChar = HIWORD(GetDialogBaseUnits());

	RECT rcClient;
	GetClientRect(hWnd, &rcClient);
	int iW = rcClient.right;
	int W3 = (iW / 3);
	int R3 = (iW % 3);
	int iH = rcClient.bottom;
	int iStatic = cxChar * 18;
	int iMiddle = W3 - iStatic;
	int imiddle = W3;
	int posLeft = W3 + R3 + iStatic;

	/*
	unclear how much the margin is, especially for toolbar, so best is to just consider 2 GetSystemMetrics(6) for every control, meanwhile
	*/

	int height1 = cyChar + GetSystemMetrics(6) * 2;

	MoveWindow(hWndEdit2, W3 + R3, 0, imiddle, cyChar, true);

	MoveWindow(hWndEdit3, W3 + R3, height1, imiddle, cyChar, true);

	MoveWindow(hWndButton1, W3 + R3, height1 * 2, imiddle / 3, cyChar, true);

	MoveWindow(hWndButton2, W3 + R3 + imiddle / 3, height1 * 2, imiddle / 3 + (imiddle % 3), cyChar, true);

	MoveWindow(hWndButton3, W3 + R3 + imiddle / 3 + imiddle / 3 + (imiddle % 3), height1 * 2, imiddle / 3, cyChar, true);

	MoveWindow(hWndStatic1, W3 + R3 - iStatic, GetSystemMetrics(6) * 2, iStatic, cyChar, true);

	MoveWindow(hWndStatic2, W3 + R3 - iStatic, height1 + GetSystemMetrics(6) * 2, iStatic, cyChar, true);

	MoveWindow(hWndStatic3, W3 + R3 - iStatic, height1 * 2 + GetSystemMetrics(6) * 2, iStatic, cyChar, true);

	MoveWindow(hWndButtonB, W3 + R3 + imiddle, 0, cxChar * 3, cyChar, true);

	MoveWindow(hWndButtonI, W3 + R3 + imiddle, height1, cxChar * 3, cyChar, true);

	MoveWindow(hWndButtonH, W3 + R3 + imiddle, height1 * 2, cxChar * 3, cyChar, true);

	SendMessage(hWndStatusbar, WM_SIZE, 0, 0);

	RECT rcStatusbar;
	GetWindowRect(hWndStatusbar, &rcStatusbar);
	int height2 = rcStatusbar.bottom - rcStatusbar.top;

	int height3 = tophalf * (iH - sizeToolbar - cyChar - height2);
	int height4 = iH - sizeToolbar - cyChar - height2 - height3;

	unsigned int x = (iMiddle / 3);
	unsigned int r = (iMiddle % 3);
	MoveWindow(hWndStatict, 0, sizeToolbar, W3 + R3, cyChar, true);
	MoveWindow(hWndButtonS, W3 + R3, sizeToolbar, imiddle / 3, cyChar, true);
	MoveWindow(hWndButtonR, W3 + R3 + imiddle / 3, sizeToolbar, imiddle / 3 + (imiddle % 3), cyChar, true);
	MoveWindow(hWndButtonO, W3 + R3 + imiddle / 3 + imiddle / 3 + (imiddle % 3), sizeToolbar, imiddle / 3, cyChar, true);
	MoveWindow(hWndStaticr, posLeft + iMiddle, sizeToolbar, W3, cyChar, true);
	MoveWindow(hWndChildwindowS, 0, sizeToolbar + cyChar, W3 + R3, height3, true);
	MoveWindow(hWndChildwindow2, W3 + R3, sizeToolbar + cyChar, W3, height3, true);
	MoveWindow(hWndChildwindow1, W3 + R3 + W3, sizeToolbar + cyChar, W3, height3, true);

	MoveWindow(hWndButton4, 0, sizeToolbar + cyChar + height3, cyChar, cyChar, true);
	int w = (posLeft - cyChar);
	MoveWindow(hWndMinimum1, cyChar, sizeToolbar + cyChar + height3, w / 3, cyChar, true);
	MoveWindow(hWndMaximum1, cyChar + (w / 3), sizeToolbar + cyChar + height3, w / 3, cyChar, true);
	MoveWindow(hWndApplylog, cyChar + (2 * (w / 3)), sizeToolbar + cyChar + height3, (w / 3) + (w % 3), cyChar, true);
	MoveWindow(hWndButton5, posLeft, sizeToolbar + cyChar + height3, x + r, cyChar, true);
	MoveWindow(hWndButton6, posLeft + x + r, sizeToolbar + cyChar + height3, x, cyChar, true);
	MoveWindow(hWndButton7, posLeft + (x * 2) + r, sizeToolbar + cyChar + height3, x, cyChar, true);
	MoveWindow(hWndStaticM, posLeft + iMiddle, sizeToolbar + cyChar + height3, iW - posLeft - iMiddle, cyChar, true);

	MoveWindow(hWndEdit1, W3 + R3 + W3, sizeToolbar + cyChar + height3 + cyChar, W3, height4 - cyChar, true);
	SCROLLINFO scr;
	scr.cbSize = sizeof(SCROLLINFO);
	scr.fMask = SIF_RANGE;
	GetScrollInfo(hWndEdit1, SB_VERT, &scr);
	SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);
	MoveWindow(hWndListView1, posLeft, sizeToolbar + cyChar + height3 + cyChar, iMiddle, height4 - cyChar, true);
	MoveWindow(hWndChildwindowC, 0, sizeToolbar + cyChar + height3 + cyChar, posLeft, height4 - cyChar, true);
}

LRESULT CALLBACK Wndproc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	static unsigned int           status1;
	static bool                       mar;
	static bool                   running;
	static HCURSOR               cursorc1;

	switch (message)
	{
	case WM_CREATE:
	{
		status1 = 0;
		mar = true;
		running = false;
		cursorc1 = LoadCursor(NULL, IDC_CROSS);
	}
	break;
	case WM_APP:
		mar = (bool)lParam;

		break;
	case WM_APP + 8:
		status1 = (unsigned int)lParam;

		if (status1 == 1)
		{
			running = false;
		}

		break;
	case WM_APP + 4:
		running = (bool)lParam;

		break;
	case WM_APP + 5:
	{
		HDC hdc = GetDC(hWnd);

		/*
		HDC hdcMem = NULL;
		HGDIOBJ hbmOld = NULL;
		*/

		BITMAPINFOHEADER bmih;
		BITMAPINFO dbmi;
		HBITMAP hbmp = NULL;

		/*
		BITMAP bmp;
		*/

		void *bits;

		int hr = GetDeviceCaps(hdc, HORZRES);
		int hs = GetDeviceCaps(hdc, HORZSIZE);
		int vr = GetDeviceCaps(hdc, VERTRES);
		int vs = GetDeviceCaps(hdc, VERTSIZE);

		bmih.biSize = sizeof(BITMAPINFOHEADER);
		bmih.biWidth = ny;
		bmih.biHeight = -(int)nx;
		bmih.biPlanes = 1;
		bmih.biBitCount = 24;
		bmih.biCompression = BI_RGB;
		bmih.biSizeImage = 0;
		bmih.biXPelsPerMeter = (hr / hs);
		bmih.biYPelsPerMeter = (vr / vs);
		bmih.biClrUsed = 0;
		bmih.biClrImportant = 0;

		ZeroMemory(&dbmi, sizeof(dbmi));
		dbmi.bmiHeader = bmih;
		dbmi.bmiColors->rgbBlue = 0;
		dbmi.bmiColors->rgbGreen = 0;
		dbmi.bmiColors->rgbRed = 0;
		dbmi.bmiColors->rgbReserved = 0;
		bits = (void*)&(pixels1[0]);

		hbmp = CreateDIBSection(hdc, &dbmi, DIB_RGB_COLORS, &bits, NULL, 0);

		if (hbmp == NULL)
		{
			MessageBox(hWnd, TEXT("Couldn't create bitmap!"), TEXT("Error!"), MB_OK);
		}
		memcpy(bits, pixels1, nx * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)));

		CreateBMPFile(hWnd, TEXT("o.bmp"), CreateBitmapInfoStruct(hWnd, hbmp), hbmp, hdc);
	}

	break;
	case WM_APP + 10:
		if (status1 == 1)
		{
			STATUS = true;
		}
		else
		{
			STATUS =false;
		}

		break;
	case WM_SETCURSOR:
		if (status1 == 1)
		{
			if (running == false)
			{
				SetCursor(cursorc1);

				return true;
			}
		}

		break;
	case WM_PAINT:
	{
		PAINTSTRUCT ps;
		HDC        hdc;
		RECT     pRect;

		hdc = BeginPaint(hWnd, &ps);

		switch (status1)
		{
		case 0:
		{
			GetClientRect(hWnd, &pRect);

			if (SMO == true)
			{
				DrawText(hdc, TEXT("(simulation mode)"), -1, &pRect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
			}
			else
			{
				DrawText(hdc, TEXT("(n/a)"), -1, &pRect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
			}
		}
		break;
		case 1:
		{
			GetClientRect(hWnd, &pRect);

			HDC hdcMem = NULL;
			HGDIOBJ hbmOld = NULL;
			BITMAPINFOHEADER bmih;
			BITMAPINFO dbmi;
			HBITMAP hbmp = NULL;
			BITMAP bmp;

			void *bits;

			int hr = GetDeviceCaps(hdc, HORZRES);
			int hs = GetDeviceCaps(hdc, HORZSIZE);
			int vr = GetDeviceCaps(hdc, VERTRES);
			int vs = GetDeviceCaps(hdc, VERTSIZE);

			bmih.biSize = sizeof(BITMAPINFOHEADER);
			bmih.biWidth = ny;
			bmih.biHeight = -(int)nx;
			bmih.biPlanes = 1;
			bmih.biBitCount = 24;
			bmih.biCompression = BI_RGB;
			bmih.biSizeImage = 0;
			bmih.biXPelsPerMeter = (hr / hs);
			bmih.biYPelsPerMeter = (vr / vs);
			bmih.biClrUsed = 0;
			bmih.biClrImportant = 0;

			ZeroMemory(&dbmi, sizeof(dbmi));
			dbmi.bmiHeader = bmih;
			dbmi.bmiColors->rgbBlue = 0;
			dbmi.bmiColors->rgbGreen = 0;
			dbmi.bmiColors->rgbRed = 0;
			dbmi.bmiColors->rgbReserved = 0;
			bits = (void*)&(pixels1[0]);

			hbmp = CreateDIBSection(hdc, &dbmi, DIB_RGB_COLORS, &bits, NULL, 0);

			if (hbmp == NULL)
			{
				MessageBox(hWnd, TEXT("Couldn't create bitmap!"), TEXT("Error!"), MB_OK);
			}
			memcpy(bits, pixels1, nx * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)));

			hdcMem = CreateCompatibleDC(hdc);
			hbmOld = SelectObject(hdcMem, hbmp);
			GetObject(hbmp, sizeof(bmp), &bmp);

			SetStretchBltMode(hdc, HALFTONE);

			if (mar == true)
			{
				int p1;
				int p2;
				int p3;
				int p4;

				p3 = (((float)nx / (float)ny) < ((float)(pRect.bottom) / (float)(pRect.right)) ? pRect.right : (int)(((float)(pRect.bottom) / (float)nx) * (float)ny));
				p4 = (((float)nx / (float)ny) < ((float)(pRect.bottom) / (float)(pRect.right)) ? (int)(((float)(pRect.right) / (float)ny) * (float)nx) : pRect.bottom);

				p1 = (p3 < (pRect.right) ? ((pRect.right) - p3) / 2 : 0);
				p2 = (p4 < (pRect.bottom) ? ((pRect.bottom) - p4) / 2 : 0);

				StretchBlt(hdc, p1, p2, p3, p4, hdcMem, 0, 0, ny, nx, SRCCOPY);
			}
			else
			{
				/* if needed, DPtoLP could be used to convert device points into logical points */

				StretchBlt(hdc, 0, 0, pRect.right, pRect.bottom, hdcMem, 0, 0, ny, nx, SRCCOPY);
			}

			SelectObject(hdcMem, hbmOld);
			DeleteDC(hdcMem);
			DeleteObject(hbmp);
		}

		break;
		default:
			break;
		}

		EndPaint(hWnd, &ps);
	}
	break;
	default:
		return DefWindowProc(hWnd, message, wParam, lParam);
	}
	return 0;
}

LRESULT CALLBACK wndproc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	static unsigned int statusS;
	static bool             mar;
	static bool          chosen;

	switch (message)
	{
	case WM_CREATE:
		statusS = 0;
		mar = true;
		chosen = false;

		break;
	case WM_APP:
		mar = (bool)lParam;

		break;
	case WM_APP + 1:
		chosen = (bool)lParam;

		break;
	case WM_APP + 5:
	{
		HDC hdc = GetDC(hWnd);

		/*
		HDC hdcMem = NULL;
		HGDIOBJ hbmOld = NULL;
		*/

		BITMAPINFOHEADER bmih;
		BITMAPINFO dbmi;
		HBITMAP hbmp = NULL;

		/*
		BITMAP bmp;
		*/

		void *bits;

		int hr = GetDeviceCaps(hdc, HORZRES);
		int hs = GetDeviceCaps(hdc, HORZSIZE);
		int vr = GetDeviceCaps(hdc, VERTRES);
		int vs = GetDeviceCaps(hdc, VERTSIZE);

		bmih.biSize = sizeof(BITMAPINFOHEADER);
		bmih.biWidth = nv;
		bmih.biHeight = -(int)nd;
		bmih.biPlanes = 1;
		bmih.biBitCount = 24;
		bmih.biCompression = BI_RGB;
		bmih.biSizeImage = 0;
		bmih.biXPelsPerMeter = (hr / hs);
		bmih.biYPelsPerMeter = (vr / vs);
		bmih.biClrUsed = 0;
		bmih.biClrImportant = 0;

		ZeroMemory(&dbmi, sizeof(dbmi));
		dbmi.bmiHeader = bmih;
		dbmi.bmiColors->rgbBlue = 0;
		dbmi.bmiColors->rgbGreen = 0;
		dbmi.bmiColors->rgbRed = 0;
		dbmi.bmiColors->rgbReserved = 0;
		bits = (void*)&(pixelsS[0]);

		hbmp = CreateDIBSection(hdc, &dbmi, DIB_RGB_COLORS, &bits, NULL, 0);

		if (hbmp == NULL)
		{
			MessageBox(hWnd, TEXT("Couldn't create bitmap!"), TEXT("Error!"), MB_OK);
		}
		memcpy(bits, pixelsS, nd * (3 * nv + (((3 * nv) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * nv) % sizeof(DWORD)) : 0)));

		CreateBMPFile(hWnd, TEXT("s.bmp"), CreateBitmapInfoStruct(hWnd, hbmp), hbmp, hdc);
	}

	break;
	case WM_APP + 8:
		statusS = (unsigned int)lParam;

		break;
	case WM_APP + 10:
		if (statusS == 1)
		{
			STATUS = true;
		}
		else
		{
			STATUS =false;
		}

		break;
	case WM_PAINT:
	{
		PAINTSTRUCT ps;
		HDC hdc;

		RECT pRect;

		hdc = BeginPaint(hWnd, &ps);

		switch (statusS)
		{
		case 0:
		{
			GetClientRect(hWnd, &pRect);

			if (chosen == true)
			{
				DrawText(hdc, TEXT("not calculated"), -1, &pRect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
			}
			else
			{
				if (SMO == true)
				{
					DrawText(hdc, TEXT("(simulation mode)"), -1, &pRect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
				}
				else
				{
					DrawText(hdc, TEXT("Welcome!"), -1, &pRect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
				}
			}
		}
		break;
		case 1:
		{
			GetClientRect(hWnd, &pRect);

			HDC hdcMem = NULL;
			HGDIOBJ hbmOld = NULL;
			BITMAPINFOHEADER bmih;
			BITMAPINFO dbmi;
			HBITMAP hbmp = NULL;
			BITMAP bmp;

			void *bits;

			int hr = GetDeviceCaps(hdc, HORZRES);
			int hs = GetDeviceCaps(hdc, HORZSIZE);
			int vr = GetDeviceCaps(hdc, VERTRES);
			int vs = GetDeviceCaps(hdc, VERTSIZE);

			bmih.biSize = sizeof(BITMAPINFOHEADER);
			bmih.biWidth = nv;
			bmih.biHeight = -(int)nd;
			bmih.biPlanes = 1;
			bmih.biBitCount = 24;
			bmih.biCompression = BI_RGB;
			bmih.biSizeImage = 0;
			bmih.biXPelsPerMeter = (hr / hs);
			bmih.biYPelsPerMeter = (vr / vs);
			bmih.biClrUsed = 0;
			bmih.biClrImportant = 0;

			ZeroMemory(&dbmi, sizeof(dbmi));
			dbmi.bmiHeader = bmih;
			dbmi.bmiColors->rgbBlue = 0;
			dbmi.bmiColors->rgbGreen = 0;
			dbmi.bmiColors->rgbRed = 0;
			dbmi.bmiColors->rgbReserved = 0;
			bits = (void*)&(pixelsS[0]);

			hbmp = CreateDIBSection(hdc, &dbmi, DIB_RGB_COLORS, &bits, NULL, 0);

			if (hbmp == NULL)
			{
				MessageBox(hWnd, TEXT("Couldn't create bitmap!"), TEXT("Error!"), MB_OK);
			}
			memcpy(bits, pixelsS, nd * (3 * nv + (((3 * nv) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * nv) % sizeof(DWORD)) : 0)));

			hdcMem = CreateCompatibleDC(hdc);
			hbmOld = SelectObject(hdcMem, hbmp);
			GetObject(hbmp, sizeof(bmp), &bmp);

			SetStretchBltMode(hdc, HALFTONE);

			if (mar == true)
			{
				int p1;
				int p2;
				int p3;
				int p4;

				p3 = (((float)nd / (float)nv) < ((float)(pRect.bottom) / (float)(pRect.right)) ? pRect.right : (int)(((float)(pRect.bottom) / (float)nd) * (float)nv));
				p4 = (((float)nd / (float)nv) < ((float)(pRect.bottom) / (float)(pRect.right)) ? (int)(((float)(pRect.right) / (float)nv) * (float)nd) : pRect.bottom);

				p1 = (p3 < (pRect.right) ? ((pRect.right) - p3) / 2 : 0);
				p2 = (p4 < (pRect.bottom) ? ((pRect.bottom) - p4) / 2 : 0);

				StretchBlt(hdc, p1, p2, p3, p4, hdcMem, 0, 0, nv, nd, SRCCOPY);
			}
			else
			{
				/* if needed, DPtoLP may be used to convert device points into logical points */

				StretchBlt(hdc, 0, 0, pRect.right, pRect.bottom, hdcMem, 0, 0, nv, nd, SRCCOPY);
			}

			SelectObject(hdcMem, hbmOld);
			DeleteDC(hdcMem);
			DeleteObject(hbmp);
		}
		break;
		case 2:
			GetClientRect(hWnd, &pRect);

			DrawText(hdc, TEXT("working.."), -1, &pRect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);

			break;
		default:
			break;
		}

		EndPaint(hWnd, &ps);
	}
	break;
	default:
		return DefWindowProc(hWnd, message, wParam, lParam);
	}
	return 0;
}

LRESULT CALLBACK wndProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	static unsigned int status2;
	static bool             mar;
	static bool          chosen;
	static bool          update;

	static bool             dfr;
	static bool             DFR;
	static bool              rL;
	static bool              rR;

	static unsigned int     lld;
	static unsigned int     cld;
	static unsigned int     lrd;
	static unsigned int     crd;
	static int               iH;
	static int               iV;
	static int               Ih;
	static int               Iv;

	static HCURSOR     cursorc1;

	static RECT           rect1;
	static bool          sizing;
	static bool          Sizing;
	static bool          SIZING;
	static bool          sIZING;
	static RECT           prevR;
	static RECT           PREVr;

	static float           AvS;
	static float           AvN;
	static float           SNR;
	static float           avs;
	static float           avn;
	static float           snr;
	static float           MSE;
	static LVITEM        lvit01;
	static LVITEM        lvit02;
	static LVITEM        lvimin;
	static LVITEM        lvimax;
	static LVITEM        lviAvS;
	static LVITEM        lviAvN;
	static LVITEM        lviSNR;
	static TCHAR         valt01[_CVTBUFSIZE] = TEXT("");
	static TCHAR         valt02[_CVTBUFSIZE] = TEXT("");
	static TCHAR         valmin[_CVTBUFSIZE] = TEXT("");
	static TCHAR         valmax[_CVTBUFSIZE] = TEXT("");
	static TCHAR         valavs[_CVTBUFSIZE] = TEXT("");
	static TCHAR         valavn[_CVTBUFSIZE] = TEXT("");
	static TCHAR         valsnr[_CVTBUFSIZE] = TEXT("");
	static TCHAR         Valt01[_CVTBUFSIZE] = TEXT("");
	static TCHAR         Valt02[_CVTBUFSIZE] = TEXT("");
	static TCHAR         Valmin[_CVTBUFSIZE] = TEXT("");
	static TCHAR         Valmax[_CVTBUFSIZE] = TEXT("");
	static TCHAR         Valavs[_CVTBUFSIZE] = TEXT("");
	static TCHAR         Valavn[_CVTBUFSIZE] = TEXT("");
	static TCHAR         Valsnr[_CVTBUFSIZE] = TEXT("");
	static unsigned char colorChange[256];

	switch (message)
	{
	case WM_CREATE:
		status2 = 0;
		mar = true;
		chosen = false;
		update = false;

		dfr = false;
		DFR = false;

		rL = false;
		rR = false;

		sizing = false;
		Sizing = false;
		SIZING = false;
		sIZING = false;

		AvS = 0.0;
		AvN = 0.0;
		SNR = 0.0;

		lvit01.mask = LVIF_TEXT;
		lvit02.mask = LVIF_TEXT;
		lvimin.mask = LVIF_TEXT;
		lvimax.mask = LVIF_TEXT;
		lviAvS.mask = LVIF_TEXT;
		lviAvN.mask = LVIF_TEXT;
		lviSNR.mask = LVIF_TEXT;

		swprintf_s(valavs, _CVTBUFSIZE, TEXT("Signal"));
		swprintf_s(Valavs, _CVTBUFSIZE, TEXT("?"));
		lviAvS.pszText = valavs;
		lviAvS.iSubItem = 0;
		lviAvS.iItem = 0;
		ListView_InsertItem(hWndListView1, &lviAvS);
		lviAvS.pszText = Valavs;
		lviAvS.iSubItem = 1;
		ListView_SetItem(hWndListView1, &lviAvS);

		swprintf_s(valavn, _CVTBUFSIZE, TEXT("Noise"));
		swprintf_s(Valavn, _CVTBUFSIZE, TEXT("?"));
		lviAvN.pszText = valavn;
		lviAvN.iSubItem = 0;
		lviAvN.iItem = 1;
		ListView_InsertItem(hWndListView1, &lviAvN);
		lviAvN.pszText = Valavn;
		lviAvN.iSubItem = 1;
		ListView_SetItem(hWndListView1, &lviAvN);

		swprintf_s(valsnr, _CVTBUFSIZE, TEXT("SNR"));
		swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("?"));
		lviSNR.pszText = valsnr;
		lviSNR.iSubItem = 0;
		lviSNR.iItem = 2;
		ListView_InsertItem(hWndListView1, &lviSNR);
		lviSNR.pszText = Valsnr;
		lviSNR.iSubItem = 1;
		ListView_SetItem(hWndListView1, &lviSNR);

		cursorc1 = LoadCursor(NULL, IDC_CROSS);

		plot = NULL;
		PLOT = NULL;

		unsigned int i;
		for (i = 0; i < 128; i++)
		{
			colorChange[i] = (i + 128);
		}
		for (i = 128; i < 256; i++)
		{
			colorChange[i] = (i - 128);
		}

		break;
	case WM_APP:
		mar = (bool)lParam;

		break;
	case WM_APP + 1:
		chosen = (bool)lParam;

		break;
	case WM_APP + 2:
		update = (bool)lParam;

		break;
	case WM_APP + 5:
	{
		HDC hdc = GetDC(hWnd);

		/*
		HDC hdcMem = NULL;
		HGDIOBJ hbmOld = NULL;
		*/

		BITMAPINFOHEADER bmih;
		BITMAPINFO dbmi;
		HBITMAP hbmp = NULL;

		/*
		BITMAP bmp;
		*/

		void *bits;

		int hr = GetDeviceCaps(hdc, HORZRES);
		int hs = GetDeviceCaps(hdc, HORZSIZE);
		int vr = GetDeviceCaps(hdc, VERTRES);
		int vs = GetDeviceCaps(hdc, VERTSIZE);

		bmih.biSize = sizeof(BITMAPINFOHEADER);
		bmih.biWidth = ny;
		bmih.biHeight = -(int)nx;
		bmih.biPlanes = 1;
		bmih.biBitCount = 24;
		bmih.biCompression = BI_RGB;
		bmih.biSizeImage = 0;
		bmih.biXPelsPerMeter = (hr / hs);
		bmih.biYPelsPerMeter = (vr / vs);
		bmih.biClrUsed = 0;
		bmih.biClrImportant = 0;

		ZeroMemory(&dbmi, sizeof(dbmi));
		dbmi.bmiHeader = bmih;
		dbmi.bmiColors->rgbBlue = 0;
		dbmi.bmiColors->rgbGreen = 0;
		dbmi.bmiColors->rgbRed = 0;
		dbmi.bmiColors->rgbReserved = 0;
		bits = (void*)&(pixels2[0]);

		hbmp = CreateDIBSection(hdc, &dbmi, DIB_RGB_COLORS, &bits, NULL, 0);

		if (hbmp == NULL)
		{
			MessageBox(hWnd, TEXT("Couldn't create bitmap!"), TEXT("Error!"), MB_OK);
		}
		memcpy(bits, pixels2, nx * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)));

		CreateBMPFile(hWnd, TEXT("r.bmp"), CreateBitmapInfoStruct(hWnd, hbmp), hbmp, hdc);
	}

	break;
	case WM_APP + 8:
		status2 = (unsigned int)lParam;

		break;
	case WM_APP + 7:
		swprintf_s(Valavs, _CVTBUFSIZE, TEXT("?"));
		lviAvS.pszText = Valavs;
		ListView_SetItem(hWndListView1, &lviAvS);

		swprintf_s(Valavn, _CVTBUFSIZE, TEXT("?"));
		lviAvN.pszText = Valavn;
		ListView_SetItem(hWndListView1, &lviAvN);

		swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("?"));
		lviSNR.pszText = Valsnr;
		ListView_SetItem(hWndListView1, &lviSNR);

		break;
	case WM_APP + 9:
		if (status2 == 1)
		{
			unsigned int lb = (unsigned int)lParam;

			switch (lb)
			{
			case 5:
				if (rL == true)
				{
					HDC hdc = GetDC(hWnd);
					unsigned int  i;
					unsigned char C;

					int iL = prevR.left;
					int iT = prevR.top;
					int iR = prevR.right - 1;
					int iB = prevR.bottom - 1;

					for (i = iT; i <= iB; i++)
					{
						C = colorChange[GetRValue(GetPixel(hdc, iL, i))];
						SetPixel(hdc, iL, i, RGB(C, C, C));

						C = colorChange[GetRValue(GetPixel(hdc, iR, i))];
						SetPixel(hdc, iR, i, RGB(C, C, C));
					}

					for (i = (iL + 1); i < iR; i++)
					{
						C = colorChange[GetRValue(GetPixel(hdc, i, iT))];
						SetPixel(hdc, i, iT, RGB(C, C, C));


						C = colorChange[GetRValue(GetPixel(hdc, i, iB))];
						SetPixel(hdc, i, iB, RGB(C, C, C));
					}

					if (SMO == true)
					{
						hdc = GetDC(hWndChildwindow1);

						for (i = iT; i <= iB; i++)
						{
							C = colorChange[GetRValue(GetPixel(hdc, iL, i))];
							SetPixel(hdc, iL, i, RGB(C, C, C));

							C = colorChange[GetRValue(GetPixel(hdc, iR, i))];
							SetPixel(hdc, iR, i, RGB(C, C, C));
						}

						for (i = (iL + 1); i < iR; i++)
						{
							C = colorChange[GetRValue(GetPixel(hdc, i, iT))];
							SetPixel(hdc, i, iT, RGB(C, C, C));


							C = colorChange[GetRValue(GetPixel(hdc, i, iB))];
							SetPixel(hdc, i, iB, RGB(C, C, C));
						}
					}

					rL = false;

					swprintf_s(Valavs, _CVTBUFSIZE, TEXT("?"));
					lviAvS.pszText = Valavs;
					ListView_SetItem(hWndListView1, &lviAvS);

					if (rR == true)
					{
						swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("?"));
						lviSNR.pszText = Valsnr;
						ListView_SetItem(hWndListView1, &lviSNR);
					}

					Sizing = false;
					dfr = false;
				}

				if (rR == true)
				{
					HDC hdc = GetDC(hWnd);
					unsigned int  i;
					unsigned char C;

					int iL = PREVr.left;
					int iT = PREVr.top;
					int iR = PREVr.right - 1;
					int iB = PREVr.bottom - 1;

					for (i = iT; i <= iB; i++)
					{
						C = colorChange[GetRValue(GetPixel(hdc, iL, i))];
						SetPixel(hdc, iL, i, RGB(C, C, C));

						C = colorChange[GetRValue(GetPixel(hdc, iR, i))];
						SetPixel(hdc, iR, i, RGB(C, C, C));
					}

					for (i = (iL + 1); i < iR; i++)
					{
						C = colorChange[GetRValue(GetPixel(hdc, i, iT))];
						SetPixel(hdc, i, iT, RGB(C, C, C));


						C = colorChange[GetRValue(GetPixel(hdc, i, iB))];
						SetPixel(hdc, i, iB, RGB(C, C, C));
					}

					if (SMO == true)
					{
						hdc = GetDC(hWndChildwindow1);

						for (i = iT; i <= iB; i++)
						{
							C = colorChange[GetRValue(GetPixel(hdc, iL, i))];
							SetPixel(hdc, iL, i, RGB(C, C, C));

							C = colorChange[GetRValue(GetPixel(hdc, iR, i))];
							SetPixel(hdc, iR, i, RGB(C, C, C));
						}

						for (i = (iL + 1); i < iR; i++)
						{
							C = colorChange[GetRValue(GetPixel(hdc, i, iT))];
							SetPixel(hdc, i, iT, RGB(C, C, C));


							C = colorChange[GetRValue(GetPixel(hdc, i, iB))];
							SetPixel(hdc, i, iB, RGB(C, C, C));
						}
					}

					rR = false;

					swprintf_s(Valavn, _CVTBUFSIZE, TEXT("?"));
					lviAvN.pszText = Valavn;
					ListView_SetItem(hWndListView1, &lviAvN);

					sIZING = false;
					DFR = false;
				}

				break;
			case 6:
				if (iH >= 0)
				{
					HDC hdc = GetDC(hWnd);

					unsigned int j;
					unsigned int C;

					int iL = rect1.left;
					int iR = (rect1.right - 1);

					if ((iR - iL) >= 50)
					{
						for (j = iL; j <= iR; j += 5)
						{
							C = colorChange[GetRValue(GetPixel(hdc, j, iH))];
							SetPixel(hdc, j, iH, RGB(C, C, C));
						}
					}
					else
					{
						for (j = iL; j <= iR; j++)
						{
							C = colorChange[GetRValue(GetPixel(hdc, j, iH))];
							SetPixel(hdc, j, iH, RGB(C, C, C));
						}
					}

					if (SMO == true)
					{
						HDC hDC = GetDC(hWndChildwindow1);

						if ((iR - iL) >= 50)
						{
							for (j = iL; j <= iR; j += 5)
							{
								C = colorChange[GetRValue(GetPixel(hDC, j, iH))];
								SetPixel(hDC, j, iH, RGB(C, C, C));
							}
						}
						else
						{
							for (j = iL; j <= iR; j++)
							{
								C = colorChange[GetRValue(GetPixel(hDC, j, iH))];
								SetPixel(hDC, j, iH, RGB(C, C, C));
							}
						}
					}

					iH = -1;
				}

				break;
			case 7:
				if (iV >= 0)
				{
					HDC hdc = GetDC(hWnd);

					unsigned int  i;
					unsigned char C;

					int iT = rect1.top;
					int iB = (rect1.bottom - 1);

					if ((iB - iT) >= 50)
					{
						for (i = iT; i <= iB; i += 5)
						{
							C = colorChange[GetRValue(GetPixel(hdc, iV, i))];
							SetPixel(hdc, iV, i, RGB(C, C, C));
						}
					}
					else
					{
						for (i = iT; i <= iB; i++)
						{
							C = colorChange[GetRValue(GetPixel(hdc, iV, i))];
							SetPixel(hdc, iV, i, RGB(C, C, C));
						}
					}

					if (SMO == true)
					{
						HDC hDC = GetDC(hWndChildwindow1);

						if ((iB - iT) >= 50)
						{
							for (i = iT; i <= iB; i += 5)
							{
								C = colorChange[GetRValue(GetPixel(hDC, iV, i))];
								SetPixel(hDC, iV, i, RGB(C, C, C));
							}
						}
						else
						{
							for (i = iT; i <= iB; i++)
							{
								C = colorChange[GetRValue(GetPixel(hDC, iV, i))];
								SetPixel(hDC, iV, i, RGB(C, C, C));
							}
						}
					}

					iV = -1;
				}

				break;
			}
		}
		break;
	case WM_SETCURSOR:
		if (status2 == 1)
		{
			SetCursor(cursorc1);

			return true;
		}

		break;
	case WM_PAINT:
	{
		PAINTSTRUCT ps;
		HDC hdc;

		hdc = BeginPaint(hWnd, &ps);

		RECT pRect;

		switch (status2)
		{
		case 0:
		{
			GetClientRect(hWnd, &pRect);

			if (chosen == true)
			{
				DrawText(hdc, TEXT("not calculated"), -1, &pRect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
			}
			else
			{
				if (SMO == true)
				{
					DrawText(hdc, TEXT("(simulation mode)"), -1, &pRect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
				}
				else
				{
					DrawText(hdc, TEXT("Welcome!"), -1, &pRect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
				}
			}
		}
		break;
		case 1:
		{
			GetClientRect(hWnd, &pRect);

			HDC hdcMem = NULL;
			HGDIOBJ hbmOld = NULL;
			BITMAPINFOHEADER bmih;
			BITMAPINFO dbmi;
			HBITMAP hbmp = NULL;
			BITMAP bmp;

			void *bits;

			int hr = GetDeviceCaps(hdc, HORZRES);
			int hs = GetDeviceCaps(hdc, HORZSIZE);
			int vr = GetDeviceCaps(hdc, VERTRES);
			int vs = GetDeviceCaps(hdc, VERTSIZE);

			bmih.biSize = sizeof(BITMAPINFOHEADER);
			bmih.biWidth = ny;
			bmih.biHeight = -(int)nx;
			bmih.biPlanes = 1;
			bmih.biBitCount = 24;
			bmih.biCompression = BI_RGB;
			bmih.biSizeImage = 0;
			bmih.biXPelsPerMeter = (hr / hs);
			bmih.biYPelsPerMeter = (vr / vs);
			bmih.biClrUsed = 0;
			bmih.biClrImportant = 0;

			ZeroMemory(&dbmi, sizeof(dbmi));
			dbmi.bmiHeader = bmih;
			dbmi.bmiColors->rgbBlue = 0;
			dbmi.bmiColors->rgbGreen = 0;
			dbmi.bmiColors->rgbRed = 0;
			dbmi.bmiColors->rgbReserved = 0;
			bits = (void*)&(pixels2[0]);

			hbmp = CreateDIBSection(hdc, &dbmi, DIB_RGB_COLORS, &bits, NULL, 0);

			if (hbmp == NULL)
			{
				MessageBox(hWnd, TEXT("Couldn't create bitmap!"), TEXT("Error!"), MB_OK);
			}
			memcpy(bits, pixels2, nx * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)));

			hdcMem = CreateCompatibleDC(hdc);
			hbmOld = SelectObject(hdcMem, hbmp);
			GetObject(hbmp, sizeof(bmp), &bmp);

			SetStretchBltMode(hdc, HALFTONE);

			if (mar == true)
			{
				int p1;
				int p2;
				int p3;
				int p4;

				p3 = (((float)nx / (float)ny) < ((float)(pRect.bottom) / (float)(pRect.right)) ? pRect.right : (int)(((float)(pRect.bottom) / (float)nx) * (float)ny));
				p4 = (((float)nx / (float)ny) < ((float)(pRect.bottom) / (float)(pRect.right)) ? (int)(((float)(pRect.right) / (float)ny) * (float)nx) : pRect.bottom);

				p1 = (p3 < (pRect.right) ? ((pRect.right) - p3) / 2 : 0);
				p2 = (p4 < (pRect.bottom) ? ((pRect.bottom) - p4) / 2 : 0);

				StretchBlt(hdc, p1, p2, p3, p4, hdcMem, 0, 0, ny, nx, SRCCOPY);

				rect1.left = p1;
				rect1.top = p2;
				rect1.right = p1 + p3;
				rect1.bottom = p2 + p4;
			}
			else
			{
				/* if needed, DPtoLP could be used to convert device points into logical points */

				StretchBlt(hdc, 0, 0, pRect.right, pRect.bottom, hdcMem, 0, 0, ny, nx, SRCCOPY);

				rect1.left = 0;
				rect1.top = 0;
				rect1.right = pRect.right;
				rect1.bottom = pRect.bottom;
			}

			SelectObject(hdcMem, hbmOld);
			DeleteDC(hdcMem);
			DeleteObject(hbmp);

			if (dfr == true)
			{
				Sizing = false;
				rL = false;

				swprintf_s(Valavs, _CVTBUFSIZE, TEXT("?"));
				lviAvS.pszText = Valavs;
				ListView_SetItem(hWndListView1, &lviAvS);

				if (rR == true)
				{
					swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("?"));
					lviSNR.pszText = Valsnr;
					ListView_SetItem(hWndListView1, &lviSNR);
				}
			}

			if (DFR == true)
			{
				sIZING = false;
				rR = false;

				swprintf_s(Valavn, _CVTBUFSIZE, TEXT("?"));
				lviAvN.pszText = Valavn;
				ListView_SetItem(hWndListView1, &lviAvN);
			}

			iH = -1;
			iV = -1;
		}
		break;
		case 2:
		{
			GetClientRect(hWnd, &pRect);

			if (update == false)
			{
				DrawText(hdc, TEXT("working.."), -1, &pRect, DT_CENTER | DT_SINGLELINE | DT_VCENTER);
			}
			else
			{
				HDC hdcMem = NULL;
				HGDIOBJ hbmOld = NULL;
				BITMAPINFOHEADER bmih;
				BITMAPINFO dbmi;
				HBITMAP hbmp = NULL;
				BITMAP bmp;

				void *bits;

				int hr = GetDeviceCaps(hdc, HORZRES);
				int hs = GetDeviceCaps(hdc, HORZSIZE);
				int vr = GetDeviceCaps(hdc, VERTRES);
				int vs = GetDeviceCaps(hdc, VERTSIZE);

				bmih.biSize = sizeof(BITMAPINFOHEADER);
				bmih.biWidth = ny;
				bmih.biHeight = -(int)nx;
				bmih.biPlanes = 1;
				bmih.biBitCount = 24;
				bmih.biCompression = BI_RGB;
				bmih.biSizeImage = 0;
				bmih.biXPelsPerMeter = (hr / hs);
				bmih.biYPelsPerMeter = (vr / vs);
				bmih.biClrUsed = 0;
				bmih.biClrImportant = 0;

				ZeroMemory(&dbmi, sizeof(dbmi));
				dbmi.bmiHeader = bmih;
				dbmi.bmiColors->rgbBlue = 0;
				dbmi.bmiColors->rgbGreen = 0;
				dbmi.bmiColors->rgbRed = 0;
				dbmi.bmiColors->rgbReserved = 0;
				bits = (void*)&(Pixels2[0]);

				hbmp = CreateDIBSection(hdc, &dbmi, DIB_RGB_COLORS, &bits, NULL, 0);

				if (hbmp == NULL)
				{
					MessageBox(hWnd, TEXT("Couldn't create bitmap!"), TEXT("Error!"), MB_OK);
				}
				memcpy(bits, Pixels2, nx * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)));

				hdcMem = CreateCompatibleDC(hdc);
				hbmOld = SelectObject(hdcMem, hbmp);
				GetObject(hbmp, sizeof(bmp), &bmp);

				SetStretchBltMode(hdc, HALFTONE);

				if (mar == true)
				{
					int p1;
					int p2;
					int p3;
					int p4;

					p3 = (((float)nx / (float)ny) < ((float)(pRect.bottom) / (float)(pRect.right)) ? pRect.right : (int)(((float)(pRect.bottom) / (float)nx) * (float)ny));
					p4 = (((float)nx / (float)ny) < ((float)(pRect.bottom) / (float)(pRect.right)) ? (int)(((float)(pRect.right) / (float)ny) * (float)nx) : pRect.bottom);

					p1 = (p3 < (pRect.right) ? ((pRect.right) - p3) / 2 : 0);
					p2 = (p4 < (pRect.bottom) ? ((pRect.bottom) - p4) / 2 : 0);

					StretchBlt(hdc, p1, p2, p3, p4, hdcMem, 0, 0, ny, nx, SRCCOPY);
				}
				else
				{
					/* if needed, DPtoLP could be used to convert device points into logical points */

					StretchBlt(hdc, 0, 0, pRect.right, pRect.bottom, hdcMem, 0, 0, ny, nx, SRCCOPY);
				}

				SelectObject(hdcMem, hbmOld);
				DeleteDC(hdcMem);
				DeleteObject(hbmp);

				if (((*NofU) % 3) == 2)
				{
					SetEvent(ghEvent1);
				}
			}
		}
		break;
		default:
			break;
		}

		EndPaint(hWnd, &ps);
	}
	break;
	case WM_MOUSEMOVE:
		if (status2 == 1)
		{
			int l;
			l = GET_Y_LPARAM(lParam);
			l = (l < 0 ? 0 : l);
			int c;
			c = GET_X_LPARAM(lParam);
			c = (c < 0 ? 0 : c);

			if ((l >= rect1.top) && (l < rect1.bottom) && (c >= rect1.left) && (c < rect1.right))
			{
				TCHAR buffer[_CVTBUFSIZE];
				swprintf_s(buffer, _CVTBUFSIZE, TEXT("(%05d,%05d)"), c, l);
				SendMessage((HWND)hWndStatusbar, (UINT)SB_SETTEXT, (WPARAM)(INT)0 | 0, (LPARAM)(LPSTR)buffer);
			}

			if ((*lastButton) == 5)
			{
				if (wParam == MK_LBUTTON)
				{
					if (sizing == true)
					{
						if (Sizing == true)
						{
							HDC hdc = GetDC(hWnd);
							HDC hDC = GetDC(hWndChildwindow1);

							if (rL == true)
							{
								unsigned int  i;
								unsigned char C;

								int iL = prevR.left;
								int iT = prevR.top;
								int iR = (prevR.right - 1);
								int iB = (prevR.bottom - 1);

								for (i = iT; i <= iB; i++)
								{
									C = colorChange[GetRValue(GetPixel(hdc, iL, i))];
									SetPixel(hdc, iL, i, RGB(C, C, C));

									C = colorChange[GetRValue(GetPixel(hdc, iR, i))];
									SetPixel(hdc, iR, i, RGB(C, C, C));
								}

								for (i = (iL + 1); i < iR; i++)
								{
									C = colorChange[GetRValue(GetPixel(hdc, i, iT))];
									SetPixel(hdc, i, iT, RGB(C, C, C));

									C = colorChange[GetRValue(GetPixel(hdc, i, iB))];
									SetPixel(hdc, i, iB, RGB(C, C, C));
								}

								if (SMO == true)
								{
									for (i = iT; i <= iB; i++)
									{
										C = colorChange[GetRValue(GetPixel(hDC, iL, i))];
										SetPixel(hDC, iL, i, RGB(C, C, C));

										C = colorChange[GetRValue(GetPixel(hDC, iR, i))];
										SetPixel(hDC, iR, i, RGB(C, C, C));
									}

									for (i = (iL + 1); i < iR; i++)
									{
										C = colorChange[GetRValue(GetPixel(hDC, i, iT))];
										SetPixel(hDC, i, iT, RGB(C, C, C));

										C = colorChange[GetRValue(GetPixel(hDC, i, iB))];
										SetPixel(hDC, i, iB, RGB(C, C, C));
									}
								}

								rL = false;

								swprintf_s(Valavs, _CVTBUFSIZE, TEXT("?"));
								lviAvS.pszText = Valavs;
								ListView_SetItem(hWndListView1, &lviAvS);

								if (rR == true)
								{
									swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("?"));
									lviSNR.pszText = Valsnr;
									ListView_SetItem(hWndListView1, &lviSNR);
								}

								dfr = false;
							}
							else
							{
								DrawFocusRect(hdc, &prevR);

								if (SMO == true)
								{
									DrawFocusRect(hDC, &prevR);
								}

								dfr = false;
							}
						}

						if ((l != lld) && (c != cld))
						{
							RECT fRect;

							if (l < lld)
							{
								if (c < cld)
								{
									fRect.top = (l < rect1.top ? rect1.top : l);
									fRect.left = (c < rect1.left ? rect1.left : c);
									fRect.bottom = lld;
									fRect.right = cld;
								}
								else
								{
									fRect.top = (l < rect1.top ? rect1.top : l);
									fRect.left = cld;
									fRect.bottom = lld;
									fRect.right = (c < rect1.right ? c : (rect1.right - 1));
								}
							}
							else
							{
								if (c < cld)
								{
									fRect.top = lld;
									fRect.left = (c < rect1.left ? rect1.left : c);
									fRect.bottom = (l < rect1.bottom ? l : (rect1.bottom - 1));
									fRect.right = cld;
								}
								else
								{
									fRect.top = lld;
									fRect.left = cld;
									fRect.bottom = (l < rect1.bottom ? l : (rect1.bottom - 1));
									fRect.right = (c < rect1.right ? c : (rect1.right - 1));
								}
							}

							prevR = fRect;

							Sizing = true;

							DrawFocusRect(GetDC(hWnd), &fRect);

							if (SMO == true)
							{
								DrawFocusRect(GetDC(hWndChildwindow1), &fRect);
							}

							dfr = true;
						}
						else
						{
							Sizing = false;
						}
					}
				}
				else
				{
					if (wParam == MK_RBUTTON)
					{
						if (SIZING == true)
						{
							if (sIZING == true)
							{
								HDC hdc = GetDC(hWnd);
								HDC hDC = GetDC(hWndChildwindow1);

								if (rR == true)
								{
									unsigned int  i;
									unsigned char C;

									int iL = PREVr.left;
									int iT = PREVr.top;
									int iR = (PREVr.right - 1);
									int iB = (PREVr.bottom - 1);

									for (i = iT; i <= iB; i++)
									{
										C = colorChange[GetRValue(GetPixel(hdc, iL, i))];
										SetPixel(hdc, iL, i, RGB(C, C, C));

										C = colorChange[GetRValue(GetPixel(hdc, iR, i))];
										SetPixel(hdc, iR, i, RGB(C, C, C));
									}

									for (i = (iL + 1); i < iR; i++)
									{
										C = colorChange[GetRValue(GetPixel(hdc, i, iT))];
										SetPixel(hdc, i, iT, RGB(C, C, C));

										C = colorChange[GetRValue(GetPixel(hdc, i, iB))];
										SetPixel(hdc, i, iB, RGB(C, C, C));
									}

									if (SMO == true)
									{
										for (i = iT; i <= iB; i++)
										{
											C = colorChange[GetRValue(GetPixel(hDC, iL, i))];
											SetPixel(hDC, iL, i, RGB(C, C, C));

											C = colorChange[GetRValue(GetPixel(hDC, iR, i))];
											SetPixel(hDC, iR, i, RGB(C, C, C));
										}

										for (i = (iL + 1); i < iR; i++)
										{
											C = colorChange[GetRValue(GetPixel(hDC, i, iT))];
											SetPixel(hDC, i, iT, RGB(C, C, C));

											C = colorChange[GetRValue(GetPixel(hDC, i, iB))];
											SetPixel(hDC, i, iB, RGB(C, C, C));
										}
									}

									rR = false;

									swprintf_s(Valavn, _CVTBUFSIZE, TEXT("?"));
									lviAvN.pszText = Valavn;
									ListView_SetItem(hWndListView1, &lviAvN);

									if (rL == true)
									{
										swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("?"));
										lviSNR.pszText = Valsnr;
										ListView_SetItem(hWndListView1, &lviSNR);
									}

									DFR = false;
								}
								else
								{
									DrawFocusRect(hdc, &PREVr);

									if (SMO == true)
									{
										DrawFocusRect(hDC, &PREVr);
									}

									DFR = false;
								}
							}

							if ((l != lrd) && (c != crd))
							{
								RECT fRect;

								if (l < lrd)
								{
									if (c < crd)
									{
										fRect.top = (l < rect1.top ? rect1.top : l);
										fRect.left = (c < rect1.left ? rect1.left : c);
										fRect.bottom = lrd;
										fRect.right = crd;
									}
									else
									{
										fRect.top = (l < rect1.top ? rect1.top : l);
										fRect.left = crd;
										fRect.bottom = lrd;
										fRect.right = (c < rect1.right ? c : (rect1.right - 1));
									}
								}
								else
								{
									if (c < crd)
									{
										fRect.top = lrd;
										fRect.left = (c < rect1.left ? rect1.left : c);
										fRect.bottom = (l < rect1.bottom ? l : (rect1.bottom - 1));
										fRect.right = crd;
									}
									else
									{
										fRect.top = lrd;
										fRect.left = crd;
										fRect.bottom = (l < rect1.bottom ? l : (rect1.bottom - 1));
										fRect.right = (c < rect1.right ? c : (rect1.right - 1));
									}
								}

								PREVr = fRect;

								sIZING = true;

								DrawFocusRect(GetDC(hWnd), &fRect);

								if (SMO == true)
								{
									DrawFocusRect(GetDC(hWndChildwindow1), &fRect);
								}

								DFR = true;
							}
							else
							{
								sIZING = false;
							}
						}
					}
				}
			}
			else
			{
				if ((*lastButton) == 6)
				{
					if ((l >= rect1.top) && (l < rect1.bottom) && (c >= rect1.left) && (c < rect1.right))
					{
						HDC hdc = GetDC(hWnd);

						unsigned int j;
						unsigned int C;

						int iL = rect1.left;
						int iR = (rect1.right - 1);

						if (iH >= 0)
						{
							if ((iR - iL) >= 50)
							{
								for (j = iL; j <= iR; j += 5)
								{
									C = colorChange[GetRValue(GetPixel(hdc, j, iH))];
									SetPixel(hdc, j, iH, RGB(C, C, C));
								}
							}
							else
							{
								for (j = iL; j <= iR; j++)
								{
									C = colorChange[GetRValue(GetPixel(hdc, j, iH))];
									SetPixel(hdc, j, iH, RGB(C, C, C));
								}
							}
						}

						if ((iR - iL) >= 50)
						{
							for (j = iL; j <= iR; j += 5)
							{
								C = colorChange[GetRValue(GetPixel(hdc, j, l))];
								SetPixel(hdc, j, l, RGB(C, C, C));
							}
						}
						else
						{
							for (j = iL; j <= iR; j++)
							{
								C = colorChange[GetRValue(GetPixel(hdc, j, l))];
								SetPixel(hdc, j, l, RGB(C, C, C));
							}
						}

						if (SMO == true)
						{
							HDC hDC = GetDC(hWndChildwindow1);

							if (iH >= 0)
							{
								if ((iR - iL) >= 50)
								{
									for (j = iL; j <= iR; j += 5)
									{
										C = colorChange[GetRValue(GetPixel(hDC, j, iH))];
										SetPixel(hDC, j, iH, RGB(C, C, C));
									}
								}
								else
								{
									for (j = iL; j <= iR; j++)
									{
										C = colorChange[GetRValue(GetPixel(hDC, j, iH))];
										SetPixel(hDC, j, iH, RGB(C, C, C));
									}
								}
							}

							if ((iR - iL) >= 50)
							{
								for (j = iL; j <= iR; j += 5)
								{
									C = colorChange[GetRValue(GetPixel(hDC, j, l))];
									SetPixel(hDC, j, l, RGB(C, C, C));
								}
							}
							else
							{
								for (j = iL; j <= iR; j++)
								{
									C = colorChange[GetRValue(GetPixel(hDC, j, l))];
									SetPixel(hDC, j, l, RGB(C, C, C));
								}
							}
						}

						iH = l;
						Ih = (int)((((float)(l - rect1.top)) / ((float)(rect1.bottom - rect1.top)))  * ((float)(nx - 1)));
					}
				}
				else
				{
					if ((l >= rect1.top) && (l < rect1.bottom) && (c >= rect1.left) && (c < rect1.right))
					{
						HDC hdc = GetDC(hWnd);

						unsigned int  i;
						unsigned char C;

						int iT = rect1.top;
						int iB = (rect1.bottom - 1);

						if (iV >= 0)
						{
							if ((iB - iT) >= 50)
							{
								for (i = iT; i <= iB; i += 5)
								{
									C = colorChange[GetRValue(GetPixel(hdc, iV, i))];
									SetPixel(hdc, iV, i, RGB(C, C, C));
								}
							}
							else
							{
								for (i = iT; i <= iB; i++)
								{
									C = colorChange[GetRValue(GetPixel(hdc, iV, i))];
									SetPixel(hdc, iV, i, RGB(C, C, C));
								}
							}
						}

						if ((iB - iT) >= 50)
						{
							for (i = iT; i <= iB; i += 5)
							{
								C = colorChange[GetRValue(GetPixel(hdc, c, i))];
								SetPixel(hdc, c, i, RGB(C, C, C));
							}
						}
						else
						{
							for (i = iT; i <= iB; i++)
							{
								C = colorChange[GetRValue(GetPixel(hdc, c, i))];
								SetPixel(hdc, c, i, RGB(C, C, C));
							}
						}

						if (SMO == true)
						{
							HDC hDC = GetDC(hWndChildwindow1);

							if (iV >= 0)
							{
								if ((iB - iT) >= 50)
								{
									for (i = iT; i <= iB; i += 5)
									{
										C = colorChange[GetRValue(GetPixel(hDC, iV, i))];
										SetPixel(hDC, iV, i, RGB(C, C, C));
									}
								}
								else
								{
									for (i = iT; i <= iB; i++)
									{
										C = colorChange[GetRValue(GetPixel(hDC, iV, i))];
										SetPixel(hDC, iV, i, RGB(C, C, C));
									}
								}
							}

							if ((iB - iT) >= 50)
							{
								for (i = iT; i <= iB; i += 5)
								{
									C = colorChange[GetRValue(GetPixel(hDC, c, i))];
									SetPixel(hDC, c, i, RGB(C, C, C));
								}
							}
							else
							{
								for (i = iT; i <= iB; i++)
								{
									C = colorChange[GetRValue(GetPixel(hDC, c, i))];
									SetPixel(hDC, c, i, RGB(C, C, C));
								}
							}
						}

						iV = c;
						Iv = (int)((((float)(c - rect1.left)) / ((float)(rect1.right - rect1.left)))  * ((float)(ny - 1)));
					}
				}
			}
		}

		break;
	case WM_LBUTTONDOWN:
		if (status2 == 1)
		{
			int l;
			l = HIWORD(lParam);
			int c;
			c = LOWORD(lParam);

			if ((*lastButton) == 5)
			{
				lld = l;
				cld = c;

				if ((l >= rect1.top) && (l < rect1.bottom) && (c >= rect1.left) && (c < rect1.right))
				{
					SetCapture(hWnd);
					sizing = true;
				}
			}
			else
			{
				if ((*lastButton) == 6)
				{
					if ((l >= rect1.top) && (l < rect1.bottom) && (c >= rect1.left) && (c < rect1.right))
					{
						plot = (unsigned char*)realloc(plot, ny * sizeof(unsigned char));

						unsigned int j;

						for (j = 0; j < ny; j++)
						{
							plot[j] = pixels2[Ih * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)) + 3 * j];
						}

						if (SMO == true)
						{
							PLOT = (unsigned char*)realloc(PLOT, ny * sizeof(unsigned char));

							for (j = 0; j < ny; j++)
							{
								PLOT[j] = pixels1[Ih * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)) + 3 * j];
							}
						}

						DialogBox(hInstance, MAKEINTRESOURCE(IDD_SHOWPLOT), hWnd, WndPlot);
					}
				}
				else
				{
					if ((l >= rect1.top) && (l < rect1.bottom) && (c >= rect1.left) && (c < rect1.right))
					{
						plot = (unsigned char*)realloc(plot, nx * sizeof(unsigned char));

						unsigned int i;

						for (i = 0; i < nx; i++)
						{
							plot[i] = pixels2[i * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)) + 3 * Iv];
						}

						if (SMO == true)
						{
							PLOT = (unsigned char*)realloc(PLOT, nx * sizeof(unsigned char));

							for (i = 0; i < nx; i++)
							{
								PLOT[i] = pixels1[i * (3 * ny + (((3 * ny) % sizeof(DWORD)) > 0 ? sizeof(DWORD) - ((3 * ny) % sizeof(DWORD)) : 0)) + 3 * Iv];
							}
						}

						DialogBox(hInstance, MAKEINTRESOURCE(IDD_SHOWPLOT), hWnd, WndPlot);
					}
				}
			}
		}

		break;
	case WM_LBUTTONUP:
		if (status2 == 1)
		{
			if ((*lastButton) == 5)
			{
				if (sizing == true)
				{
					ReleaseCapture();

					sizing = false;

					if (Sizing == true)
					{
						int l;
						l = HIWORD(lParam);
						int c;
						c = LOWORD(lParam);

						if ((l == lld) && (c == cld))
						{
							HDC hdc = GetDC(hWnd);

							unsigned int  i;
							unsigned char C;

							int iL = prevR.left;
							int iT = prevR.top;
							int iR = (prevR.right - 1);
							int iB = (prevR.bottom - 1);

							for (i = iT; i <= iB; i++)
							{
								C = colorChange[GetRValue(GetPixel(hdc, iL, i))];
								SetPixel(hdc, iL, i, RGB(C, C, C));

								C = colorChange[GetRValue(GetPixel(hdc, iR, i))];
								SetPixel(hdc, iR, i, RGB(C, C, C));
							}

							for (i = (iL + 1); i < iR; i++)
							{
								C = colorChange[GetRValue(GetPixel(hdc, i, iT))];
								SetPixel(hdc, i, iT, RGB(C, C, C));

								C = colorChange[GetRValue(GetPixel(hdc, i, iB))];
								SetPixel(hdc, i, iB, RGB(C, C, C));
							}

							if (SMO == true)
							{
								HDC hDC = GetDC(hWndChildwindow1);

								for (i = iT; i <= iB; i++)
								{
									C = colorChange[GetRValue(GetPixel(hDC, iL, i))];
									SetPixel(hDC, iL, i, RGB(C, C, C));

									C = colorChange[GetRValue(GetPixel(hDC, iR, i))];
									SetPixel(hDC, iR, i, RGB(C, C, C));
								}

								for (i = (iL + 1); i < iR; i++)
								{
									C = colorChange[GetRValue(GetPixel(hDC, i, iT))];
									SetPixel(hDC, i, iT, RGB(C, C, C));

									C = colorChange[GetRValue(GetPixel(hDC, i, iB))];
									SetPixel(hDC, i, iB, RGB(C, C, C));
								}
							}

							rL = false;

							swprintf_s(Valavs, _CVTBUFSIZE, TEXT("?"));
							lviAvS.pszText = Valavs;
							ListView_SetItem(hWndListView1, &lviAvS);

							if (rR == true)
							{
								swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("?"));
								lviSNR.pszText = Valsnr;
								ListView_SetItem(hWndListView1, &lviSNR);
							}

							Sizing = false;
							dfr = false;
						}
						else
						{
							if ((((float)((prevR.bottom - prevR.top) * nx)) / ((float)(rect1.bottom - rect1.top)) < 20.0) || (((float)((prevR.right - prevR.left) * ny)) / ((float)(rect1.right - rect1.left)) < 20.0))
							{
								DrawFocusRect(GetDC(hWnd), &prevR);

								if (SMO == true)
								{
									DrawFocusRect(GetDC(hWndChildwindow1), &prevR);
								}

								Sizing = false;
								dfr = false;

								MessageBox(NULL, TEXT("region is smaller than 20 by 20 pixels"), TEXT("!"), MB_OK);
							}
							else
							{
								bool ok = true;
								if (rR == true)
								{
									RECT rect;
									if (IntersectRect(&rect, &prevR, &PREVr) == true)
									{
										ok = false;

										DrawFocusRect(GetDC(hWnd), &prevR);

										if (SMO == true)
										{
											DrawFocusRect(GetDC(hWndChildwindow1), &prevR);
										}

										Sizing = false;
										dfr = false;

										MessageBox(NULL, TEXT("regions should not intersect"), TEXT("!"), MB_OK);
									}
								}

								if (ok == true)
								{
									HDC hdc = GetDC(hWnd);
									HDC hDC = GetDC(hWndChildwindow1);

									DrawFocusRect(hdc, &prevR);

									if (SMO == true)
									{
										DrawFocusRect(hDC, &prevR);
									}

									unsigned int  i;
									unsigned char C;

									int iL = prevR.left;
									int iT = prevR.top;
									int iR = (prevR.right - 1);
									int iB = (prevR.bottom - 1);

									for (i = iT; i <= iB; i++)
									{
										C = colorChange[GetRValue(GetPixel(hdc, iL, i))];
										SetPixel(hdc, iL, i, RGB(C, C, C));

										C = colorChange[GetRValue(GetPixel(hdc, iR, i))];
										SetPixel(hdc, iR, i, RGB(C, C, C));
									}

									for (i = (iL + 1); i < iR; i++)
									{
										C = colorChange[GetRValue(GetPixel(hdc, i, iT))];
										SetPixel(hdc, i, iT, RGB(C, C, C));

										C = colorChange[GetRValue(GetPixel(hdc, i, iB))];
										SetPixel(hdc, i, iB, RGB(C, C, C));
									}

									if (SMO == true)
									{
										for (i = iT; i <= iB; i++)
										{
											C = colorChange[GetRValue(GetPixel(hDC, iL, i))];
											SetPixel(hDC, iL, i, RGB(C, C, C));

											C = colorChange[GetRValue(GetPixel(hDC, iR, i))];
											SetPixel(hDC, iR, i, RGB(C, C, C));
										}

										for (i = (iL + 1); i < iR; i++)
										{
											C = colorChange[GetRValue(GetPixel(hDC, i, iT))];
											SetPixel(hDC, i, iT, RGB(C, C, C));

											C = colorChange[GetRValue(GetPixel(hDC, i, iB))];
											SetPixel(hDC, i, iB, RGB(C, C, C));
										}
									}

									rL = true;

									unsigned int fL;
									unsigned int lL;
									unsigned int fC;
									unsigned int lC;

									fL = (unsigned int)((((float)(prevR.top - rect1.top)) / ((float)(rect1.bottom - rect1.top)))  * ((float)(nx - 1)));
									lL = (unsigned int)((((float)((prevR.bottom - 1) - rect1.top)) / ((float)(rect1.bottom - rect1.top)))  * ((float)(nx - 1)));
									fC = (unsigned int)((((float)(prevR.left - rect1.left)) / ((float)(rect1.right - rect1.left))) * ((float)(ny - 1)));
									lC = (unsigned int)((((float)((prevR.right - 1) - rect1.left)) / ((float)(rect1.right - rect1.left))) * ((float)(ny - 1)));

									unsigned int j;
									unsigned int n;

									n = 0;
									AvS = 0.0;

									for (i = fL; i <= lL; i++)
									{
										for (j = fC; j <= lC; j++)
										{
											AvS += RI1[i * ny + j];
											n++;
										}
									}

									AvS /= ((float)n);

									if (SMO == true)
									{
										avs = 0.0;
										MSE = 0.0;

										for (i = fL; i <= lL; i++)
										{
											for (j = fC; j <= lC; j++)
											{
												avs += Oi1[i * ny + j];
												MSE += pow(Oi1[i * ny + j] - RI1[i * ny + j], 2.0);
											}
										}

										avs /= ((float)n);
										MSE /= ((float)n);
									}

									if (SMO == true)
									{
										swprintf_s(Valavs, _CVTBUFSIZE, TEXT("%f,%f (mse:%f)"), AvS, avs, MSE);
									}
									else
									{
										swprintf_s(Valavs, _CVTBUFSIZE, TEXT("%f"), AvS);
									}

									lviAvS.pszText = Valavs;
									ListView_SetItem(hWndListView1, &lviAvS);

									if (rR == true)
									{
										fL = (unsigned int)((((float)(PREVr.top - rect1.top)) / ((float)(rect1.bottom - rect1.top)))  * ((float)(nx - 1)));
										lL = (unsigned int)((((float)((PREVr.bottom - 1) - rect1.top)) / ((float)(rect1.bottom - rect1.top)))  * ((float)(nx - 1)));
										fC = (unsigned int)((((float)(PREVr.left - rect1.left)) / ((float)(rect1.right - rect1.left))) * ((float)(ny - 1)));
										lC = (unsigned int)((((float)((PREVr.right - 1) - rect1.left)) / ((float)(rect1.right - rect1.left))) * ((float)(ny - 1)));

										n = 0;
										SNR = 0.0;

										for (i = fL; i <= lL; i++)
										{
											for (j = fC; j <= lC; j++)
											{
												SNR += pow(abs(AvN - RI1[i * ny + j]), 2.0);
												n++;
											}
										}

										SNR /= ((float)(n - 1));

										SNR = sqrt(SNR);

										if (SMO == true)
										{
											snr = 0.0;

											for (i = fL; i <= lL; i++)
											{
												for (j = fC; j <= lC; j++)
												{
													snr += pow(abs(avn - Oi1[i * ny + j]), 2.0);
												}
											}

											snr /= ((float)(n - 1));

											snr = sqrt(snr);
										}

										if (SNR > 0.0)
										{
											SNR = (AvS / SNR);
											if (SNR > 10000.0)
											{
												swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("> 10000.0"));
											}
											else
											{
												swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("%f"), SNR);
											}
										}
										else
										{
											swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("n/a"));
										}

										if (SMO == true)
										{
											TCHAR buffer[_CVTBUFSIZE];

											if (snr > 0.0)
											{
												snr = (avs / snr);
												if (snr > 10000.0)
												{
													swprintf_s(buffer, _CVTBUFSIZE, TEXT(",> 10000.0"));
												}
												else
												{
													swprintf_s(buffer, _CVTBUFSIZE, TEXT(",%f"), snr);
												}
											}
											else
											{
												swprintf_s(buffer, _CVTBUFSIZE, TEXT(",n/a"));
											}

											wcscat_s(Valsnr, _CVTBUFSIZE, buffer);
										}

										lviSNR.pszText = Valsnr;
										ListView_SetItem(hWndListView1, &lviSNR);
									}
								}
							}
						}
					}
				}
			}
		}

		break;
	case WM_RBUTTONDOWN:
		if (status2 == 1)
		{
			if ((*lastButton) == 5)
			{
				int l;
				l = HIWORD(lParam);
				int c;
				c = LOWORD(lParam);

				lrd = l;
				crd = c;

				if ((l >= rect1.top) && (l < rect1.bottom) && (c >= rect1.left) && (c < rect1.right))
				{
					SetCapture(hWnd);
					SIZING = true;
				}
			}
		}

		break;
	case WM_RBUTTONUP:
		if (status2 == 1)
		{
			if ((*lastButton) == 5)
			{
				if (SIZING == true)
				{
					ReleaseCapture();

					SIZING = false;

					if (sIZING == true)
					{
						int l;
						l = HIWORD(lParam);
						int c;
						c = LOWORD(lParam);

						if ((l == lrd) && (c == crd))
						{
							HDC hdc = GetDC(hWnd);

							unsigned int  i;
							unsigned char C;

							int iL = PREVr.left;
							int iT = PREVr.top;
							int iR = (PREVr.right - 1);
							int iB = (PREVr.bottom - 1);

							for (i = iT; i <= iB; i++)
							{
								C = colorChange[GetRValue(GetPixel(hdc, iL, i))];
								SetPixel(hdc, iL, i, RGB(C, C, C));

								C = colorChange[GetRValue(GetPixel(hdc, iR, i))];
								SetPixel(hdc, iR, i, RGB(C, C, C));
							}

							for (i = (iL + 1); i < iR; i++)
							{
								C = colorChange[GetRValue(GetPixel(hdc, i, iT))];
								SetPixel(hdc, i, iT, RGB(C, C, C));

								C = colorChange[GetRValue(GetPixel(hdc, i, iB))];
								SetPixel(hdc, i, iB, RGB(C, C, C));
							}

							if (SMO == true)
							{
								HDC hDC = GetDC(hWndChildwindow1);

								for (i = iT; i <= iB; i++)
								{
									C = colorChange[GetRValue(GetPixel(hDC, iL, i))];
									SetPixel(hDC, iL, i, RGB(C, C, C));

									C = colorChange[GetRValue(GetPixel(hDC, iR, i))];
									SetPixel(hDC, iR, i, RGB(C, C, C));
								}

								for (i = (iL + 1); i < iR; i++)
								{
									C = colorChange[GetRValue(GetPixel(hDC, i, iT))];
									SetPixel(hDC, i, iT, RGB(C, C, C));

									C = colorChange[GetRValue(GetPixel(hDC, i, iB))];
									SetPixel(hDC, i, iB, RGB(C, C, C));
								}
							}

							rR = false;

							swprintf_s(Valavn, _CVTBUFSIZE, TEXT("?"));
							lviAvN.pszText = Valavn;
							ListView_SetItem(hWndListView1, &lviAvN);

							if (rL == true)
							{
								swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("?"));
								lviSNR.pszText = Valsnr;
								ListView_SetItem(hWndListView1, &lviSNR);
							}

							sIZING = false;
							DFR = false;
						}
						else
						{
							if ((((float)((PREVr.bottom - PREVr.top) * nx)) / ((float)(rect1.bottom - rect1.top)) < 20.0) || (((float)((PREVr.right - PREVr.left) * ny)) / ((float)(rect1.right - rect1.left)) < 20.0))
							{
								DrawFocusRect(GetDC(hWnd), &PREVr);

								if (SMO == true)
								{
									DrawFocusRect(GetDC(hWndChildwindow1), &PREVr);
								}

								sIZING = false;
								DFR = false;

								MessageBox(NULL, TEXT("region is smaller than 20 by 20 pixels"), TEXT("!"), MB_OK);
							}
							else
							{
								bool ok = true;
								if (rL == true)
								{
									RECT rect;
									if (IntersectRect(&rect, &prevR, &PREVr) == true)
									{
										ok = false;

										DrawFocusRect(GetDC(hWnd), &PREVr);

										if (SMO == true)
										{
											DrawFocusRect(GetDC(hWndChildwindow1), &PREVr);
										}

										sIZING = false;
										DFR = false;

										MessageBox(NULL, TEXT("regions should not intersect"), TEXT("!"), MB_OK);
									}
								}

								if (ok == true)
								{
									HDC hdc = GetDC(hWnd);
									HDC hDC = GetDC(hWndChildwindow1);

									DrawFocusRect(hdc, &PREVr);

									if (SMO == true)
									{
										DrawFocusRect(hDC, &PREVr);
									}

									unsigned int  i;
									unsigned char C;

									int iL = PREVr.left;
									int iT = PREVr.top;
									int iR = (PREVr.right - 1);
									int iB = (PREVr.bottom - 1);

									for (i = iT; i <= iB; i++)
									{
										C = colorChange[GetRValue(GetPixel(hdc, iL, i))];
										SetPixel(hdc, iL, i, RGB(C, C, C));

										C = colorChange[GetRValue(GetPixel(hdc, iR, i))];
										SetPixel(hdc, iR, i, RGB(C, C, C));
									}

									for (i = (iL + 1); i < iR; i++)
									{
										C = colorChange[GetRValue(GetPixel(hdc, i, iT))];
										SetPixel(hdc, i, iT, RGB(C, C, C));

										C = colorChange[GetRValue(GetPixel(hdc, i, iB))];
										SetPixel(hdc, i, iB, RGB(C, C, C));
									}

									if (SMO == true)
									{
										for (i = iT; i <= iB; i++)
										{
											C = colorChange[GetRValue(GetPixel(hDC, iL, i))];
											SetPixel(hDC, iL, i, RGB(C, C, C));

											C = colorChange[GetRValue(GetPixel(hDC, iR, i))];
											SetPixel(hDC, iR, i, RGB(C, C, C));
										}

										for (i = (iL + 1); i < iR; i++)
										{
											C = colorChange[GetRValue(GetPixel(hDC, i, iT))];
											SetPixel(hDC, i, iT, RGB(C, C, C));

											C = colorChange[GetRValue(GetPixel(hDC, i, iB))];
											SetPixel(hDC, i, iB, RGB(C, C, C));
										}
									}

									rR = true;

									unsigned int fL;
									unsigned int lL;
									unsigned int fC;
									unsigned int lC;

									fL = (unsigned int)((((float)(PREVr.top - rect1.top)) / ((float)(rect1.bottom - rect1.top)))  * ((float)(nx - 1)));
									lL = (unsigned int)((((float)((PREVr.bottom - 1) - rect1.top)) / ((float)(rect1.bottom - rect1.top)))  * ((float)(nx - 1)));
									fC = (unsigned int)((((float)(PREVr.left - rect1.left)) / ((float)(rect1.right - rect1.left))) * ((float)(ny - 1)));
									lC = (unsigned int)((((float)((PREVr.right - 1) - rect1.left)) / ((float)(rect1.right - rect1.left))) * ((float)(ny - 1)));

									unsigned int j;
									unsigned int n;

									n = 0;
									AvN = 0.0;

									for (i = fL; i <= lL; i++)
									{
										for (j = fC; j <= lC; j++)
										{
											AvN += RI1[i * ny + j];
											n++;
										}
									}

									AvN /= ((float)n);

									if (SMO == true)
									{
										avn = 0.0;
										MSE = 0.0;

										for (i = fL; i <= lL; i++)
										{
											for (j = fC; j <= lC; j++)
											{
												avn += Oi1[i * ny + j];
												MSE += pow(Oi1[i * ny + j] - RI1[i * ny + j], 2.0);
											}
										}

										avn /= ((float)n);
										MSE /= ((float)n);
									}

									if (SMO == true)
									{
										swprintf_s(Valavn, _CVTBUFSIZE, TEXT("%f,%f (mse:%f)"), AvN, avn, MSE);
									}
									else
									{
										swprintf_s(Valavn, _CVTBUFSIZE, TEXT("%f"), AvN);
									}

									lviAvN.pszText = Valavn;
									ListView_SetItem(hWndListView1, &lviAvN);

									if (rL == true)
									{
										fL = (unsigned int)((((float)(prevR.top - rect1.top)) / ((float)(rect1.bottom - rect1.top)))  * ((float)(nx - 1)));
										lL = (unsigned int)((((float)((prevR.bottom - 1) - rect1.top)) / ((float)(rect1.bottom - rect1.top)))  * ((float)(nx - 1)));
										fC = (unsigned int)((((float)(prevR.left - rect1.left)) / ((float)(rect1.right - rect1.left))) * ((float)(ny - 1)));
										lC = (unsigned int)((((float)((prevR.right - 1) - rect1.left)) / ((float)(rect1.right - rect1.left))) * ((float)(ny - 1)));

										n = 0;
										SNR = 0.0;

										for (i = fL; i <= lL; i++)
										{
											for (j = fC; j <= lC; j++)
											{
												SNR += pow(abs(AvN - RI1[i * ny + j]), 2.0);
												n++;
											}
										}

										SNR /= ((float)(n - 1));

										SNR = sqrt(SNR);

										if (SMO == true)
										{
											snr = 0.0;

											for (i = fL; i <= lL; i++)
											{
												for (j = fC; j <= lC; j++)
												{
													snr += pow(abs(avn - Oi1[i * ny + j]), 2.0);
												}
											}

											snr /= ((float)(n - 1));

											snr = sqrt(snr);
										}

										if (SNR > 0.0)
										{
											SNR = (AvS / SNR);
											if (SNR > 10000.0)
											{
												swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("> 10000.0"));
											}
											else
											{
												swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("%f"), SNR);
											}
										}
										else
										{
											swprintf_s(Valsnr, _CVTBUFSIZE, TEXT("n/a"));
										}

										if (SMO == true)
										{
											TCHAR buffer[_CVTBUFSIZE];

											if (snr > 0.0)
											{
												snr = (avs / snr);
												if (snr > 10000.0)
												{
													swprintf_s(buffer, _CVTBUFSIZE, TEXT(",> 10000.0"));
												}
												else
												{
													swprintf_s(buffer, _CVTBUFSIZE, TEXT(",%f"), snr);
												}
											}
											else
											{
												swprintf_s(buffer, _CVTBUFSIZE, TEXT(",n/a"));
											}

											wcscat_s(Valsnr, _CVTBUFSIZE, buffer);
										}

										lviSNR.pszText = Valsnr;
										ListView_SetItem(hWndListView1, &lviSNR);
									}
								}
							}
						}
					}
				}
			}
		}

		break;
	default:
		return DefWindowProc(hWnd, message, wParam, lParam);
	}
	return 0;
}

LRESULT CALLBACK wndconv(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	static unsigned int update;
	static bool Log;

	switch (message)
	{
	case WM_CREATE:
	{
		update = 0;
		Log = false;
	}

		break;
	case WM_APP + 3:
		update = (unsigned int)lParam;

		break;
	case WM_APP + 25:
	{
		Log = (bool)lParam;
	}

		break;
	case WM_PAINT:
	{
		PAINTSTRUCT ps;
		HDC hdc;

		hdc = BeginPaint(hWnd, &ps);
		RECT rect;
		GetClientRect(hWnd, &rect);
		int w = rect.right;
		int h = rect.bottom;

		if (update == 1)
		{
			if (h >= 21)
			{
				int T;

				T = (ALREADY + nIT);

				if (T >= 2)
				{
					HPEN hPen = CreatePen(PS_DASHDOTDOT, (Log == true ? 2 : 1), RGB(255, 0, 0));
					HGDIOBJ obj = SelectObject(hdc, hPen);

					unsigned int i;

					float minC;
					float maxC;

					minC = ITv[0];
					maxC = ITv[0];

					for (i = 1; i < T; i++)
					{
						if (ITv[i] < minC)
						{
							minC = ITv[i];
						}
						else
						{
							if (ITv[i] > maxC)
							{
								maxC = ITv[i];
							}
						}
					}

					TCHAR buffer[_CVTBUFSIZE];
					swprintf_s(buffer, _CVTBUFSIZE, TEXT("min time per iteration: %.2lf"), minC);
					SetWindowText(hWndMinimum1, buffer);
					swprintf_s(buffer, _CVTBUFSIZE, TEXT("max time per iteration: %.2lf"), maxC);
					SetWindowText(hWndMaximum1, buffer);

					if ((h % 2) == 1)
					{
						h = (h - 1);
					}

					unsigned int hdt =         (h - 3);
					int X            = (T > w ? w : T);
					float Aux1      =   (maxC - minC);
					float Aux2  = ((float)(hdt - 1));
					
					MoveToEx(hdc, 0, 1 + (int)(Aux2 * ((maxC - ITv[T - X]) / Aux1)), (LPPOINT)NULL);

					for (i = 1; i < X; i++)
					{
						LineTo(hdc, i, 1 + (int)(Aux2 * ((maxC - ITv[T - X + i]) / Aux1)));
					}

					SelectObject(hdc, obj);
					DeleteObject(hPen);
				}
			}

			if (((*NofU) % 3) == 2)
			{
				SetEvent(ghEvent2);
			}
		}
		else
		{
			if (update == 2)
			{
				if (h >= 21)
				{
					int T;

					T = (ALREADY + NIT);

					if (T >= 2)
					{
						HPEN hPen = CreatePen(PS_DASHDOTDOT, (Log == true ? 2 : 1), RGB(255, 0, 0));
						HGDIOBJ obj = SelectObject(hdc, hPen);

						unsigned int i;

						float minC;
						float maxC;

						minC = ITV[0];
						maxC = ITV[0];

						for (i = 1; i < T; i++)
						{
							if (ITV[i] < minC)
							{
								minC = ITV[i];
							}
							else
							{
								if (ITV[i] > maxC)
								{
									maxC = ITV[i];
								}
							}
						}

						TCHAR buffer[_CVTBUFSIZE];
						swprintf_s(buffer, _CVTBUFSIZE, TEXT("min time per iteration: %.2lf"), minC);
						SetWindowText(hWndMinimum1, buffer);
						swprintf_s(buffer, _CVTBUFSIZE, TEXT("max time per iteration: %.2lf"), maxC);
						SetWindowText(hWndMaximum1, buffer);

						if ((h % 2) == 1)
						{
							h = (h - 1);
						}

						unsigned int hdt=         (h - 3);
						int X           = (T > w ? w : T);
						float Aux1       = (maxC - minC);
						float Aux2 = ((float)(hdt - 1));

						MoveToEx(hdc, 0, 1 + (int)(Aux2 * ((maxC - ITV[T - X]) / Aux1)), (LPPOINT)NULL);

						for (i = 1; i < X; i++)
						{
							LineTo(hdc, i, 1 + (int)(Aux2 * ((maxC - ITV[T - X + i]) / Aux1)));
						}

						SelectObject(hdc, obj);
						DeleteObject(hPen);
					}
				}
			}
		}

		EndPaint(hWnd, &ps);
	}
	break;
	default:
		return DefWindowProc(hWnd, message, wParam, lParam);
	}
	return 0;
}

INT_PTR CALLBACK WndPROC(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	UNREFERENCED_PARAMETER(lParam);

	static HWND   hWndStatic01;
	static HWND   hWndStatic02;
	static HWND   hWndStatic03;
	static HWND   hWndStatic04;
	static HWND   hWndStatic05;
	static HWND   hWndStatic06;
	static HWND   hWndStatic07;
	static HWND   hWndStatic08;
	static HWND   hWndStatic09;
	static HWND   hWndStatic10;
	static HWND   hWndStatic11;
	static HWND     hWndEdit1;
	static HWND     hWndEdit2;
	static HWND     hWndEdit3;
	static HWND     hWndEdit4;
	static HWND     hWndEdit5;
	static HWND     hWndEdit6;
	static HWND     hWndEdit08;
	static HWND     hWndEdit09;
	static HWND     hWndEdit10;
	static HWND     hWndCheckboxb;
	static HWND hWndcombobox1;
	static int         cxChar;
	static int         cyChar;

	switch (message)
	{
	case WM_INITDIALOG:
	{
		RECT rect;
		RECT Rect;

		GetWindowRect(hDlg, &rect);
		GetWindowRect(GetParent(hDlg), &Rect);

		long l1;
		long l2;

		l1 = (rect.right - rect.left);
		l2 = (rect.bottom - rect.top);

		MoveWindow(hDlg, Rect.left + ((Rect.right - Rect.left) - l1) / 2, Rect.top + ((Rect.bottom - Rect.top) - l2) / 2, l1, l2, true);

		cxChar = LOWORD(GetDialogBaseUnits());
		cyChar = HIWORD(GetDialogBaseUnits());


		hWndStatic01 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42, 8, cxChar * 4, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic01, TEXT("nd->"));

		hWndStatic02 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42, 8 + (cyChar + 2), cxChar * 4, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic02, TEXT("nv->"));

		hWndStatic03 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42, 8 + (cyChar + 2) * 2, cxChar * 4, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic03, TEXT("nx->"));

		hWndStatic04 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42, 8 + (cyChar + 2) * 3, cxChar * 4, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic04, TEXT("ny->"));

		hWndStatic05 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42, 8 + (cyChar + 2) * 4, cxChar * 4, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic05, TEXT("STO:"));

		hWndStatic06 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42, 8 + (cyChar + 2) * 5, cxChar * 4, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic06, TEXT("STD:"));

		hWndcombobox1 = CreateWindow(WC_COMBOBOX, NULL, CBS_DROPDOWNLIST | WS_CHILD | WS_VISIBLE, 42 + cxChar * 4, 20 + 6 * cyChar, cxChar * 20, 4 * cyChar, hDlg, NULL, hInstance, NULL);

		GetClientRect(hWndcombobox1, &rect);
		int HeightCombobox = (rect.bottom - rect.top);

		hWndStatic07 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42, 6 * cyChar + 18 + GetSystemMetrics(6) + (HeightCombobox - cyChar) / 2, cxChar * 4, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic07, TEXT("rot:"));

		hWndStatic08 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42, 8 + (cyChar + 2) * 6 + HeightCombobox, cxChar * 4, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic08, TEXT(" fv:"));

		hWndStatic09 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42, 8 + (cyChar + 2) * 7 + HeightCombobox, cxChar * 4, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic09, TEXT(" lv:"));

		hWndStatic10 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42, 8 + (cyChar + 2) * 8 + HeightCombobox, cxChar * 4, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic10, TEXT("cor:"));

		hWndStatic11 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42 - cxChar * 5, 8 + (cyChar + 2) * 9 + HeightCombobox, cxChar * 9, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic11, TEXT("fan-beam:"));

		HFONT hFont1;

		hFont1 = CreateFont(cyChar, 0, 0, 0, FW_DONTCARE, false, false, false, ANSI_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, FIXED_PITCH, NULL);
		SendMessage(hWndStatic01, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic02, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic03, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic04, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic05, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic06, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic07, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic08, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic09, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic10, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic11, WM_SETFONT, WPARAM(hFont1), true);

		hWndEdit1 = CreateWindow(WC_EDIT, NULL, WS_CHILD | WS_VISIBLE | ES_RIGHT, 42 + cxChar * 4, 8, cxChar * 20, cyChar, hDlg, (HMENU)ID_ET1, hInstance, NULL);
		hWndEdit2 = CreateWindow(WC_EDIT, NULL, WS_CHILD | WS_VISIBLE | ES_RIGHT, 42 + cxChar * 4, 8 + (cyChar + 2), cxChar * 20, cyChar, hDlg, (HMENU)ID_ET2, hInstance, NULL);
		hWndEdit3 = CreateWindow(WC_EDIT, NULL, WS_CHILD | WS_VISIBLE | ES_RIGHT, 42 + cxChar * 4, 8 + (cyChar + 2) * 2, cxChar * 20, cyChar, hDlg, (HMENU)ID_ET3, hInstance, NULL);
		hWndEdit4 = CreateWindow(WC_EDIT, NULL, WS_CHILD | WS_VISIBLE | ES_RIGHT, 42 + cxChar * 4, 8 + (cyChar + 2) * 3, cxChar * 20, cyChar, hDlg, (HMENU)ID_ET4, hInstance, NULL);
		hWndEdit5 = CreateWindow(WC_EDIT, NULL, WS_CHILD | WS_VISIBLE | ES_RIGHT, 42 + cxChar * 4, 8 + (cyChar + 2) * 4, cxChar * 20, cyChar, hDlg, (HMENU)ID_ET5, hInstance, NULL);
		hWndEdit6 = CreateWindow(WC_EDIT, NULL, WS_CHILD | WS_VISIBLE | ES_RIGHT, 42 + cxChar * 4, 8 + (cyChar + 2) * 5, cxChar * 20, cyChar, hDlg, (HMENU)ID_ET6, hInstance, NULL);
		hWndEdit08 = CreateWindow(WC_EDIT, NULL, WS_CHILD | WS_VISIBLE | ES_RIGHT, 42 + cxChar * 4, 8 + (cyChar + 2) * 6 + HeightCombobox, cxChar * 20, cyChar, hDlg, (HMENU)ID_ET6, hInstance, NULL);
		hWndEdit09 = CreateWindow(WC_EDIT, NULL, WS_CHILD | WS_VISIBLE | ES_RIGHT, 42 + cxChar * 4, 8 + (cyChar + 2) * 7 + HeightCombobox, cxChar * 20, cyChar, hDlg, (HMENU)ID_ET6, hInstance, NULL);
		hWndEdit10 = CreateWindow(WC_EDIT, NULL, WS_CHILD | WS_VISIBLE | ES_RIGHT, 42 + cxChar * 4, 8 + (cyChar + 2) * 8 + HeightCombobox, cxChar * 20, cyChar, hDlg, (HMENU)ID_ET6, hInstance, NULL);

		hWndCheckboxb = CreateWindow(TEXT("BUTTON"),
			TEXT(""),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_AUTOCHECKBOX,
			42 + cxChar * 4, 8 + (cyChar + 2) * 9 + HeightCombobox, cxChar * 20, cyChar,
			hDlg,
			(HMENU)ID_CHECKBOXFANBEAM,
			hInstance,
			NULL);

		TCHAR buffer[_CVTBUFSIZE];

		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%u"), nd);
		SetWindowText(hWndEdit1, buffer);
		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%u"), nv);
		SetWindowText(hWndEdit2, buffer);
		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%u"), nx);
		SetWindowText(hWndEdit3, buffer);
		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%u"), ny);
		SetWindowText(hWndEdit4, buffer);
		EnableWindow(hWndEdit4, false);
		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%f"), d);
		SetWindowText(hWndEdit5, buffer);
		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%f"), a + d);
		SetWindowText(hWndEdit6, buffer);
		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%f"), fv);
		SetWindowText(hWndEdit08, buffer);
		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%f"), lv);
		SetWindowText(hWndEdit09, buffer);
		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%f"), cor);
		SetWindowText(hWndEdit10, buffer);

		swprintf(buffer, _CVTBUFSIZE, TEXT("clockwise"));
		SendMessage(hWndcombobox1, CB_ADDSTRING, (WPARAM)0, (LPARAM)buffer);
		swprintf(buffer, _CVTBUFSIZE, TEXT("counter-clockwise"));
		SendMessage(hWndcombobox1, CB_ADDSTRING, (WPARAM)0, (LPARAM)buffer);

		if (rot == true)
		{
			SendMessage(hWndcombobox1, (UINT)CB_SETCURSEL, (WPARAM)0, (LPARAM)0);
		}
		else
		{
			SendMessage(hWndcombobox1, (UINT)CB_SETCURSEL, (WPARAM)1, (LPARAM)0);
		}

		if (fb == true)
		{
			Button_SetCheck(hWndCheckboxb, true);
		}
		else
		{
			Button_SetCheck(hWndCheckboxb, false);
		}

		if (SMO == true)
		{
			SendMessage(hWndChildwindow1, WM_APP + 10, NULL, NULL);

			if (STATUS == true)
			{
				EnableWindow(hWndEdit3, false);

				/*
				EnableWindow(hWndEdit4, false);
				*/
			}
		}
		else
		{
			SendMessage(hWndChildwindowS, WM_APP + 10, NULL, NULL);

			if (STATUS == true)
			{
				EnableWindow(hWndEdit1, false);
				EnableWindow(hWndEdit2, false);
			}
		}

		return (INT_PTR)TRUE;
	}
	case WM_COMMAND:
		if (LOWORD(wParam) == IDOK)
		{
			HCURSOR prevCursor = SetCursor(LoadCursor(NULL, IDC_WAIT));

			TCHAR buffer[_CVTBUFSIZE];

			int    Nd;
			int    Nv;
			int    Nx;
			int    Ny;
			float  D;
			float  A;
			float FV;
			float LV;
			float COR;

			GetWindowText(hWndEdit1, buffer, 21);
			_set_errno(0);
			Nd = _wtoi(buffer);

			if (errno == ERANGE)
			{
				MessageBox(NULL, TEXT("nd value out of range.."), TEXT("?"), MB_OK);
			}
			else
			{
				GetWindowText(hWndEdit2, buffer, 21);
				_set_errno(0);
				Nv = _wtoi(buffer);

				if (errno == ERANGE)
				{
					MessageBox(NULL, TEXT("nv value out of range.."), TEXT("?"), MB_OK);
				}
				else
				{
					GetWindowText(hWndEdit3, buffer, 21);
					_set_errno(0);
					Nx = _wtoi(buffer);

					if (errno == ERANGE)
					{
						MessageBox(NULL, TEXT("nx value out of range.."), TEXT("?"), MB_OK);
					}
					else
					{
						/*
						GetWindowText(hWndEdit4, buffer, 21);
						_set_errno(0);
						Ny = _wtoi(buffer);

						if (errno == ERANGE)
						{
							MessageBox(NULL, TEXT("ny value out of range.."), TEXT("?"), MB_OK);
						}
						else
						{
						*/

						Ny = Nx;

							GetWindowText(hWndEdit5, buffer, 21);
							_set_errno(0);
							D = _wtof(buffer);

							if (errno == ERANGE)
							{
								MessageBox(NULL, TEXT("STO value out of range.."), TEXT("?"), MB_OK);
							}
							else
							{
								GetWindowText(hWndEdit6, buffer, 21);
								_set_errno(0);
								A = _wtof(buffer) - D;

								if (errno == ERANGE)
								{
									MessageBox(NULL, TEXT("STD value out of range.."), TEXT("?"), MB_OK);
								}
								else
								{
									if ((Nd >= 16) && (Nd <= 4096) && (Nv >= 16) && (Nv <= 4096) && (Nx >= 16) && (Nx <= 4096) && (Ny >= 16) && (Ny <= 4096))
									{
										int Max = (Nx > Ny ? Nx : Ny);

										float mAX = (float)Max;

										if ((D >= mAX) && (D <= 25000.0) && (A >= mAX) && (A <= 25000.0))
										{
											if (SMO == true)
											{
												if ((Nx != nx) || (Ny != ny))
												{
													/*
													unsigned int iSelection = SendMessage(hWndCombobox1, (UINT)CB_GETCURSEL, (WPARAM)0, (LPARAM)0);

													if (iSelection > 0)
													{
													SendMessage(GetParent(hDlg), WM_APP, NULL, NULL);
													}
													*/
												}
											}
											else
											{
												if ((Nd != nd) || (Nv != nv))
												{
													/*
													unsigned int iSelection = SendMessage(hWndCombobox1, (UINT)CB_GETCURSEL, (WPARAM)0, (LPARAM)0);

													if (iSelection > 0)
													{
													SendMessage(GetParent(hDlg), WM_APP, NULL, NULL);
													}
													*/
												}
											}

											nd = Nd;
											nv = Nv;
											nx = Nx;
											ny = Ny;
											d = D;
											a = A;

											if (SendMessage(hWndcombobox1, (UINT)CB_GETCURSEL, (WPARAM)0, (LPARAM)0) == 0)
											{
												rot = true;
											}
											else
											{
												rot = false;
											}

											GetWindowText(hWndEdit08, buffer, 21);
											FV = _wtof(buffer);
											fv = FV;

											GetWindowText(hWndEdit09, buffer, 21);
											LV = _wtof(buffer);
											lv = LV;

											GetWindowText(hWndEdit10, buffer, 21);
											COR = _wtof(buffer);
											cor = COR;

											if (Button_GetCheck(hWndCheckboxb) == true)
											{
												fb = true;
											}
											else
											{
												fb = false;
											}

											EndDialog(hDlg, LOWORD(wParam));
										}
										else
										{
											MessageBox(NULL, TEXT("each of STO,STD should be between max(nx,ny) and 25000.0"), TEXT("?"), MB_OK);
										}
									}
									else
									{
										MessageBox(NULL, TEXT("each of nd,nv,nx,ny should be between 16 and 4096"), TEXT("?"), MB_OK);
									}
								}
							}

						/*
						}
						*/
					}
				}
			}

			SetCursor(prevCursor);

			return (INT_PTR)TRUE;
		}
		else
		{
			if (LOWORD(wParam) == ID_ET3)
			{
				if (HIWORD(wParam) == EN_UPDATE)
				{
					TCHAR buffer[_CVTBUFSIZE];
					GetWindowText(hWndEdit3, buffer, _CVTBUFSIZE);
					SetWindowText(hWndEdit4, buffer);
				}

				return (INT_PTR)TRUE;
			}
		}

		break;
	case WM_CLOSE:
	{
		EndDialog(hDlg, LOWORD(wParam));

		return (INT_PTR)TRUE;
	}
	}

	return (INT_PTR)FALSE;
}

INT_PTR CALLBACK WndParallelization(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	UNREFERENCED_PARAMETER(lParam);

	static HWND   hWndStatic1;
	static HWND     hWndEdit1;
	static HWND   hWndStatic2;
	static HWND hWndCheckbox1;
	static int         cxChar;
	static int         cyChar;
	static int       localmpc;

	switch (message)
	{
	case WM_INITDIALOG:
	{
		RECT rect;
		RECT Rect;

		GetWindowRect(hDlg, &rect);
		GetWindowRect(GetParent(hDlg), &Rect);

		long l1;
		long l2;

		l1 = (rect.right - rect.left);
		l2 = (rect.bottom - rect.top);

		MoveWindow(hDlg, Rect.left + ((Rect.right - Rect.left) - l1) / 2, Rect.top + ((Rect.bottom - Rect.top) - l2) / 2, l1, l2, true);

		cxChar = LOWORD(GetDialogBaseUnits());
		cyChar = HIWORD(GetDialogBaseUnits());

		hWndStatic1 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42 - 4 * cxChar, 8 + (cyChar + 2) * 2, cxChar * 18, cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic1, TEXT("number of threads:"));

		hWndStatic2 = CreateWindow(TEXT("static"), NULL, WS_CHILD | WS_VISIBLE, 42 + 6 * cxChar, 8 + (cyChar + 2) * 5, cxChar * 8,  cyChar, hDlg, NULL, hInstance, NULL);
		SetWindowText(hWndStatic2, TEXT("use GPU:"));

		HFONT hFont1;

		hFont1 = CreateFont(cyChar, 0, 0, 0, FW_DONTCARE, false, false, false, ANSI_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, FIXED_PITCH, NULL);
		SendMessage(hWndStatic1, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStatic2, WM_SETFONT, WPARAM(hFont1), true);

		hWndEdit1 = CreateWindow(WC_EDIT, NULL, WS_CHILD | WS_VISIBLE | ES_RIGHT, 42 + 14 * cxChar, 8 + (cyChar + 2) * 2, cxChar * 10, cyChar, hDlg, (HMENU)ID_ET3, hInstance, NULL);

		hWndCheckbox1 = CreateWindow(TEXT("BUTTON"),
			TEXT(""),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_AUTOCHECKBOX,
			42 + 14 * cxChar, 8 + (cyChar + 2) * 5, cxChar * 10, cyChar,
			hDlg,
			(HMENU)ID_CHECKBOXUSEGPU,
			hInstance,
			NULL);

		TCHAR buffer[_CVTBUFSIZE];

		localmpc = GetMaximumProcessorCount(ALL_PROCESSOR_GROUPS);

		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%u"), nT);
		SetWindowText(hWndEdit1, buffer);

		if (nofGPUs == 0)
		{
			EnableWindow(hWndCheckbox1, false);
		}
		else
		{
			if (UGC == true)
			{
				Button_SetCheck(hWndCheckbox1, true);
			}
			else
			{
				Button_SetCheck(hWndCheckbox1,false);
			}
		}

		return (INT_PTR)TRUE;
	}
	case WM_COMMAND:
		if (LOWORD(wParam) == IDOK)
		{
			TCHAR buffer[_CVTBUFSIZE];;
			int NT;

			GetWindowText(hWndEdit1, buffer, 11);
			_set_errno(0);
			NT = _wtoi(buffer);

			if (errno == ERANGE)
			{
				MessageBox(NULL, TEXT("value out of range.."), TEXT("?"), MB_OK);
			}
			else
			{
				if ((NT >= 1) && (NT <= localmpc))
				{
					nT = NT;

					if (Button_GetCheck(hWndCheckbox1) == true)
					{
						UGC = true;
					}
					else
					{
						UGC =false;
					}

					EndDialog(hDlg, LOWORD(wParam));
				}
				else
				{
					swprintf_s(buffer, _CVTBUFSIZE, TEXT("number of threads has to be between 1 and %u"), localmpc);

					MessageBox(NULL, buffer, TEXT("?"), MB_OK);
				}
			}

			return (INT_PTR)TRUE;
		}

		break;
	case WM_CLOSE:
	{
		EndDialog(hDlg, LOWORD(wParam));

		return (INT_PTR)TRUE;
	}
	}

	return (INT_PTR)FALSE;
}

INT_PTR CALLBACK WndData(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	UNREFERENCED_PARAMETER(lParam);

	static int cxChar;
	static int cyChar;
	
	/*
	static HWND hWndDirs;
	*/

	static HWND hWndList;

	switch (message)
	{
	case WM_INITDIALOG:
	{
		RECT rect;
		RECT Rect;

		GetWindowRect(hDlg, &rect);
		GetWindowRect(GetParent(hDlg), &Rect);

		long l1;
		long l2;

		l1 = (rect.right - rect.left);
		l2 = (rect.bottom - rect.top);
		MoveWindow(hDlg, Rect.left + ((Rect.right - Rect.left) - l1) / 2, Rect.top + ((Rect.bottom - Rect.top) - l2) / 2, l1, l2, true);

		cxChar = LOWORD(GetDialogBaseUnits());
		cyChar = HIWORD(GetDialogBaseUnits());

		GetClientRect(hDlg, &rect);
		GetClientRect(GetDlgItem(hDlg, IDOK), &Rect);

		long x = (rect.bottom - rect.top - (3 * cyChar) - (Rect.bottom - Rect.top));

		/*
		hWndDirs = CreateWindowEx(	0,
									WC_TREEVIEW,
									NULL,
									WS_VISIBLE | WS_CHILD | WS_BORDER | TVS_HASLINES,
									cyChar,
									2 * cyChar,
									((rect.right - rect.left - cyChar - (Rect.right - Rect.left)) / 3) - 2,
									x,
									hDlg,
									(HMENU)ID_DIRS,
									hInstance,
									NULL);
		hWndList = CreateWindowEx(	0,
									TEXT("listbox"),
									NULL,
									WS_CHILD | WS_VISIBLE | LBS_STANDARD | LBS_NOINTEGRALHEIGHT,
									cyChar + ((rect.right - rect.left - cyChar - (Rect.right - Rect.left)) / 3) + 2,
									2 * cyChar,
									(rect.right - rect.left - cyChar - (Rect.right - Rect.left)) - ((rect.right - rect.left - cyChar - (Rect.right - Rect.left)) / 3) - 2,
									x,
									hDlg,
									(HMENU)ID_DATALIST,
									hInstance,
									NULL);
		*/

		hWndList = CreateWindowEx(0,
			TEXT("listbox"),
			NULL,
			WS_CHILD | WS_VISIBLE | LBS_STANDARD | LBS_NOINTEGRALHEIGHT,
			cyChar,
			2 * cyChar,
			(rect.right - rect.left - cyChar - (Rect.right - Rect.left)),
			x,
			hDlg,
			(HMENU)ID_DATALIST,
			hInstance,
			NULL);

		SendMessage(hWndList, LB_DIR, DDL_READWRITE | DDL_READONLY | DDL_HIDDEN | DDL_SYSTEM | DDL_DIRECTORY | DDL_ARCHIVE | DDL_DRIVES, (LPARAM)TEXT("*.*"));
	}

	return (INT_PTR)TRUE;
	case WM_COMMAND:
		if (LOWORD(wParam) == IDOK)
		{
			int i;

			i = SendMessage(hWndList, LB_GETCURSEL, 0, 0);

			if (i != LB_ERR)
			{
				TCHAR szBuffer[MAX_PATH + 1];
				TCHAR szFile[MAX_PATH + 1];

				SendMessage(hWndList, LB_GETTEXT, i, (LPARAM)szBuffer);

				HANDLE hFile;

				if (INVALID_HANDLE_VALUE != (hFile = CreateFile(szBuffer, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL)))
				{
					CloseHandle(hFile);

					lstrcpy(szFile, szBuffer);
					GetCurrentDirectory(MAX_PATH + 1, szBuffer);
					if (szBuffer[lstrlen(szBuffer) - 1] != '\\')
					{
						lstrcat(szBuffer, TEXT("\\"));
					}

					lstrcat(szBuffer, szFile);

					size_t nCC;
					wcstombs_s(&nCC, currentInput, (size_t)_CVTBUFSIZE, szBuffer, (size_t)_CVTBUFSIZE);

					EndDialog(hDlg, LOWORD(wParam));
					SendMessage(GetParent(hDlg), WM_APP + 20, NULL, NULL);
					return (INT_PTR)TRUE;
				}
			}

			EndDialog(hDlg, LOWORD(wParam));
			return (INT_PTR)TRUE;
		}
		else
		{
			if (LOWORD(wParam) == ID_DATALIST && HIWORD(wParam) == LBN_DBLCLK)
			{
				int i;

				if (LB_ERR == (i = SendMessage(hWndList, LB_GETCURSEL, 0, 0)))
				{
					break;
				}

				TCHAR szBuffer[MAX_PATH + 1];
				TCHAR szFile[MAX_PATH + 1];

				SendMessage(hWndList, LB_GETTEXT, i, (LPARAM)szBuffer);

				HANDLE hFile;

				if (INVALID_HANDLE_VALUE != (hFile = CreateFile(szBuffer, GENERIC_READ, FILE_SHARE_READ, NULL, OPEN_EXISTING, 0, NULL)))
				{
					CloseHandle(hFile);

					lstrcpy(szFile, szBuffer);
					GetCurrentDirectory(MAX_PATH + 1, szBuffer);
					if (szBuffer[lstrlen(szBuffer) - 1] != '\\')
					{
						lstrcat(szBuffer, TEXT("\\"));
					}

					lstrcat(szBuffer, szFile);

					size_t nCC;
					wcstombs_s(&nCC, currentInput, (size_t)_CVTBUFSIZE, szBuffer, (size_t)_CVTBUFSIZE);

					EndDialog(hDlg, LOWORD(wParam));
					SendMessage(GetParent(hDlg), WM_APP + 20, NULL, NULL);
				}
				else
				{
					szBuffer[lstrlen(szBuffer) - 1] = '\0';

					// If setting the directory doesn't work, maybe it's a drive change, so try that.
					if (!SetCurrentDirectory(szBuffer + 1))
					{
						szBuffer[3] = ':';
						szBuffer[4] = '\0';
						SetCurrentDirectory(szBuffer + 2);
					}

					// Get the new directory name and fill the list box.
					GetCurrentDirectory(MAX_PATH + 1, szBuffer);

					SendMessage(hWndList, LB_RESETCONTENT, 0, 0);
					SendMessage(hWndList, LB_DIR, DDL_READWRITE | DDL_READONLY | DDL_HIDDEN | DDL_SYSTEM | DDL_DIRECTORY | DDL_ARCHIVE | DDL_DRIVES, (LPARAM)TEXT("*.*"));
				}

				return (INT_PTR)TRUE;
			}
		}

		break;
	case WM_CLOSE:

		EndDialog(hDlg, LOWORD(wParam));
		return (INT_PTR)TRUE;
	}

	return (INT_PTR)FALSE;
}

INT_PTR CALLBACK WndGPU(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	UNREFERENCED_PARAMETER(lParam);

	static int cyChar;

	static HWND hWndEditGPU1;
	static HWND hWndCheckbox1;

	switch (message)
	{
	case WM_INITDIALOG:
	{
		HMENU hm = GetSystemMenu(hDlg, false);

		EnableMenuItem(hm, SC_CLOSE, MF_BYCOMMAND | MF_DISABLED);

		RECT rect;
		RECT Rect;

		GetWindowRect(hDlg, &rect);
		GetWindowRect(GetParent(hDlg), &Rect);

		long l1;
		long l2;

		l1 = (rect.right - rect.left);
		l2 = (rect.bottom - rect.top);

		MoveWindow(hDlg, Rect.left + ((Rect.right - Rect.left) - l1) / 2, Rect.top + ((Rect.bottom - Rect.top) - l2) / 2, l1, l2, true);

		cyChar = HIWORD(GetDialogBaseUnits());

		GetClientRect(hDlg, &rect);
		GetClientRect(GetDlgItem(hDlg, IDOK), &Rect);

		HFONT hFont1;

		hFont1 = CreateFont(cyChar, 0, 0, 0, FW_DONTCARE, false, false, false, ANSI_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, FIXED_PITCH, NULL);

		HFONT hf = SelectFont(GetDC(hDlg), hFont1);

		TEXTMETRIC tm;
		GetTextMetrics(GetDC(hDlg), &tm);

		unsigned int r1 = ((rect.right - rect.left - 4 * cyChar - (Rect.right - Rect.left)) % tm.tmAveCharWidth);

		SelectFont(GetDC(hDlg), hf);

		HWND hWndGroupbox1;

		hWndGroupbox1 = CreateWindowEx(0,
			TEXT("BUTTON"),
			TEXT("Option 1"),
			WS_CHILD | WS_VISIBLE | BS_GROUPBOX,
			cyChar,
			cyChar,
			rect.right - rect.left - 2 * cyChar - (Rect.right - Rect.left),
			7 * cyChar,
			hDlg,
			NULL,
			hInstance,
			NULL);

		HWND hWndStaticGPU1;

		hWndStaticGPU1 = CreateWindow(TEXT("static"),
			NULL,
			WS_CHILD | WS_VISIBLE | SS_LEFT,
			2 * cyChar,
			3 * cyChar,
			rect.right - rect.left - 4 * cyChar - (Rect.right - Rect.left) - r1,
			cyChar,
			hDlg,
			NULL,
			hInstance,
			NULL);

		TCHAR buffer[_CVTBUFSIZE];
		

		swprintf_s(buffer, _CVTBUFSIZE, TEXT("min. # of rays:  %8u"), GpuThreads);

		SetWindowText(hWndStaticGPU1, buffer);

		HWND hWndStaticGPU2;

		hWndStaticGPU2 = CreateWindow(TEXT("static"),
			NULL,
			WS_CHILD | WS_VISIBLE | SS_LEFT,
			2 * cyChar,
			4 * cyChar,
			rect.right - rect.left - 4 * cyChar - (Rect.right - Rect.left) - r1,
			cyChar,
			hDlg,
			NULL,
			hInstance,
			NULL);

		swprintf_s(buffer, _CVTBUFSIZE, TEXT("max. # of rays:  %8u"), er);

		SetWindowText(hWndStaticGPU2, buffer);

		SendMessage(hWndStaticGPU1, WM_SETFONT, WPARAM(hFont1), true);
		SendMessage(hWndStaticGPU2, WM_SETFONT, WPARAM(hFont1), true);

		hWndEditGPU1 = CreateWindow(
			TEXT("EDIT"),
			TEXT(""),
			WS_CHILD | WS_VISIBLE,
			2 * cyChar,
			6 * cyChar,
			rect.right - rect.left - 4 * cyChar - (Rect.right - Rect.left) - r1,
			cyChar,
			hDlg,
			(HMENU)ID_EDITGPU,
			hInstance,
			NULL);

		swprintf_s(buffer, _CVTBUFSIZE, TEXT("%u"), er);

		SetWindowText(hWndEditGPU1, buffer);

		HWND hWndStaticGPU3;

		hWndStaticGPU3 = CreateWindow(TEXT("static"),
			NULL,
			WS_CHILD | WS_VISIBLE | SS_LEFT,
			cyChar,
			9 * cyChar,
			rect.right - rect.left - 4 * cyChar - (Rect.right - Rect.left) - r1,
			cyChar,
			hDlg,
			NULL,
			hInstance,
			NULL);

		swprintf_s(buffer, _CVTBUFSIZE, TEXT("or"));

		SetWindowText(hWndStaticGPU3, buffer);

		HWND hWndGroupbox2;

		hWndGroupbox2 = CreateWindowEx(0,
			TEXT("BUTTON"),
			TEXT("Option 2"),
			WS_CHILD | WS_VISIBLE | BS_GROUPBOX,
			cyChar,
			11 * cyChar,
			rect.right - rect.left - 2 * cyChar - (Rect.right - Rect.left),
			4 * cyChar,
			hDlg,
			NULL,
			hInstance,
			NULL);

		hWndCheckbox1 = CreateWindow(TEXT("BUTTON"),
			TEXT("CPU--GPU Load Balancing"),
			WS_TABSTOP | WS_VISIBLE | WS_CHILD | BS_AUTOCHECKBOX,
			2 * cyChar,
			13 * cyChar,
			rect.right - rect.left - 4 * cyChar - (Rect.right - Rect.left) - r1,
			cyChar,
			hDlg,
			(HMENU)ID_CHECKBOXLOADBALANCING,
			hInstance,
			NULL);

		SendMessage(hWndCheckbox1, WM_SETFONT, WPARAM(hFont1), true);
	}

	return (INT_PTR)TRUE;
	case WM_COMMAND:
		unsigned int wmId;
		wmId = LOWORD(wParam);
		unsigned int wmEvent;
		wmEvent = HIWORD(wParam);

		if (wmId == IDOK)
		{
			if (Button_GetCheck(hWndCheckbox1) == true)
			{
				LoadBalancing = true;

				(*WorkGPU) = (er / 2);

				(*WorkGPU) = ((*WorkGPU) >= GpuThreads ? (*WorkGPU) : GpuThreads);

				EndDialog(hDlg, wmId);
			}
			else
			{
				LoadBalancing =false;

				TCHAR buffer[_CVTBUFSIZE];

				GetWindowText(hWndEditGPU1, buffer, _CVTBUFSIZE);

				size_t l;
				int    i;
				bool   N;

				N = true;
				l = wcslen(buffer);

				for (i = 0; i < l; i++)
				{
					if ((buffer[i] < TEXT('0')) || (buffer[i] > TEXT('9')))
					{
						N = false;
						break;
					}
				}

				if (N == true)
				{
					if ((l == 0) || (l > 8))
					{
						N = false;
					}
					else
					{
						if ((l >= 2) && (buffer[0] == TEXT('0')))
						{
							N = false;
						}
					}
				}

				if (N == false)
				{
					MessageBox(hDlg, TEXT("Invalid Number !"), TEXT("?"), MB_OK);

					swprintf_s(buffer, _CVTBUFSIZE, TEXT("%u"), er);
					SetWindowText(hWndEditGPU1, buffer);
				}
				else
				{
					if ((_wtoi(buffer) < GpuThreads) || (_wtoi(buffer) > er))
					{
						MessageBox(hDlg, TEXT("Invalid Number !"), TEXT("?"), MB_OK);

						swprintf_s(buffer, _CVTBUFSIZE, TEXT("%u"), er);
						SetWindowText(hWndEditGPU1, buffer);
					}
					else
					{
						(*WorkGPU) = _wtoi(buffer);

						EndDialog(hDlg, wmId);
					}
				}
			}

			return (INT_PTR)TRUE;
		}
		else
		{
			if (wmId == ID_EDITGPU)
			{
				if (wmEvent == EN_SETFOCUS)
				{
					PostMessage(hWndEditGPU1, EM_SETSEL, (WPARAM)0, (LPARAM)-1);

					return (INT_PTR)TRUE;
				}
			}
			else
			{
				if (wmId == ID_CHECKBOXLOADBALANCING)
				{
					if (wmEvent == BN_CLICKED)
					{
						if (Button_GetCheck(hWndCheckbox1) == true)
						{
							EnableWindow(hWndEditGPU1,false);
						}
						else
						{
							EnableWindow(hWndEditGPU1, true);
						}
					}
				}
			}
		}

		break;
	case WM_CLOSE:
	{
		MessageBox(hDlg, TEXT("An option needs to be selected first.."), TEXT("?"), MB_OK);
	}

		return (INT_PTR)TRUE;
	}

	return (INT_PTR)FALSE;
}

INT_PTR CALLBACK WNDGPU(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	UNREFERENCED_PARAMETER(lParam);

	static int            cyChar;
	static HWND        hWndEdit1;
	static HWND        hWndEdit2;
	static HWND        hWndEdit3;
	static HWND     hWndGPUsList;
	static HBRUSH brushEditGPUs1;
	static HBRUSH brushEditGPUs2;
	static HBRUSH brushEditGPUs3;
	static int                 n;

	switch (message)
	{
	case WM_CTLCOLORSTATIC:
	{
		HWND hwnd = (HWND)lParam;
		HDC hdclocal = (HDC)wParam;

		switch (GetWindowLong(hwnd, GWL_ID))
		{
		case ID_EDITGPUs1:
		{
			SetBkColor(hdclocal, RGB(250, 205, 0));
		}
		return (INT_PTR)brushEditGPUs1;
		case ID_EDITGPUs2:
		{
			SetBkColor(hdclocal, RGB(250, 205, 0));
		}
		return (INT_PTR)brushEditGPUs2;
		case ID_EDITGPUs3:
		{
			SetBkColor(hdclocal, RGB(250, 205, 0));
		}
		return (INT_PTR)brushEditGPUs3;
		default:
			break;
		}
	}

	break;
	case WM_INITDIALOG:
	{
		RECT rect;
		RECT Rect;

		GetWindowRect(hDlg, &rect);
		GetWindowRect(GetParent(hDlg), &Rect);

		long l1;
		long l2;

		l1 = (rect.right - rect.left);
		l2 = (rect.bottom - rect.top);

		MoveWindow(hDlg, Rect.left + ((Rect.right - Rect.left) - l1) / 2, Rect.top + ((Rect.bottom - Rect.top) - l2) / 2, l1, l2, true);

		cyChar = HIWORD(GetDialogBaseUnits());

		GetClientRect(hDlg, &rect);
		GetClientRect(GetDlgItem(hDlg, IDOK), &Rect);

		hWndGPUsList = CreateWindowEx(0, TEXT("listbox"), NULL, WS_CHILDWINDOW | WS_VISIBLE | LBS_NOTIFY, cyChar, 2 * cyChar, (rect.right - rect.left) / 3 - cyChar, rect.bottom - rect.top - 3 * cyChar - (Rect.bottom - Rect.top), hDlg, (HMENU)ID_GPUsLIST, hInstance, NULL);

		brushEditGPUs1 = CreateSolidBrush(RGB(255, 205, 0));
		brushEditGPUs2 = CreateSolidBrush(RGB(255, 205, 0));
		brushEditGPUs3 = CreateSolidBrush(RGB(255, 205, 0));

		hWndEdit1 = CreateWindowEx(0,
			TEXT("EDIT"),
			TEXT(""),
			WS_CHILD | WS_VISIBLE | ES_READONLY | ES_CENTER,
			(rect.right - rect.left) / 3 + cyChar,
			2 * cyChar,
			2 * ((rect.right - rect.left) / 3) - 2 * cyChar,
			cyChar,
			hDlg,
			(HMENU)ID_EDITGPUs1,
			hInstance,
			NULL);

		SetWindowText(hWndEdit1, TEXT("?"));

		hWndEdit2 = CreateWindowEx(0,
			TEXT("EDIT"),
			TEXT("?"),
			WS_CHILD | WS_VISIBLE | ES_READONLY | ES_CENTER,
			(rect.right - rect.left) / 3 + cyChar,
			3 * cyChar + (rect.bottom - rect.top - 5 * cyChar - (Rect.bottom - Rect.top)) / 2 - cyChar / 2,
			2 * ((rect.right - rect.left) / 3) - 2 * cyChar,
			cyChar,
			hDlg,
			(HMENU)ID_EDITGPUs2,
			hInstance,
			NULL);

		hWndEdit3 = CreateWindowEx(0,
			TEXT("EDIT"),
			TEXT("?"),
			WS_CHILD | WS_VISIBLE | ES_READONLY | ES_CENTER,
			(rect.right - rect.left) / 3 + cyChar,
			rect.bottom - rect.top - 3 * cyChar - (Rect.bottom - Rect.top),
			2 * ((rect.right - rect.left) / 3) - 2 * cyChar,
			cyChar,
			hDlg,
			(HMENU)ID_EDITGPUs3,
			hInstance,
			NULL);

		n = 0;

		if (cudaGetDeviceCount(&n) == cudaSuccess)
		{
			unsigned int i;
			cudaDeviceProp cDP;
			TCHAR buffer[_CVTBUFSIZE];

			for (i = 0; i < n; i++)
			{
				cudaGetDeviceProperties(&cDP, i);

				if ((cDP.major >= 3) && (cDP.major <= 7))
				{
					swprintf_s(buffer, _CVTBUFSIZE, TEXT("device %u, compute capability %d.%d"), i, cDP.major, cDP.minor);

					SendMessage(hWndGPUsList, LB_ADDSTRING, NULL, (LPARAM)buffer);
				}
			}

			if (n >= 1)
			{
				SendMessage(hWndGPUsList, LB_SETCURSEL, (WPARAM)0, NULL);

				cudaGetDeviceProperties(&cDP, 0);

				swprintf_s(buffer, _CVTBUFSIZE, TEXT("Total Global Memory: %llu bytes"), cDP.totalGlobalMem);

				SetWindowText(hWndEdit1, buffer);

				swprintf_s(buffer, _CVTBUFSIZE, TEXT("Number of Multiprocessors: %d"), cDP.multiProcessorCount);

				SetWindowText(hWndEdit2, buffer);

				swprintf_s(buffer, _CVTBUFSIZE, TEXT("Shared Memory per Multiprocessor: %llu bytes"), cDP.sharedMemPerMultiprocessor);

				SetWindowText(hWndEdit3, buffer);
			}
		}
	}

	return (INT_PTR)TRUE;
	case WM_COMMAND:
		unsigned int wmId;
		wmId = LOWORD(wParam);
		unsigned int wmEvent;
		wmEvent = HIWORD(wParam);

		if (wmId == IDOK)
		{
			int cs = SendMessage(hWndGPUsList, LB_GETCURSEL, NULL, NULL);

			if (cs != LB_ERR)
			{
				GPUSelection = cs;
			}

			EndDialog(hDlg, LOWORD(wParam));
			return (INT_PTR)TRUE;
		}
		else
		{
			if (wmId == ID_GPUsLIST)
			{
				if (wmEvent == LBN_SELCHANGE)
				{
					int cs = SendMessage(hWndGPUsList, LB_GETCURSEL, NULL, NULL);

					if (cs != LB_ERR)
					{
						cudaDeviceProp cDP;
						TCHAR buffer[_CVTBUFSIZE];

						cudaGetDeviceProperties(&cDP, cs);

						swprintf_s(buffer, _CVTBUFSIZE, TEXT("Total Global Memory: %llu bytes"), cDP.totalGlobalMem);

						SetWindowText(hWndEdit1, buffer);

						swprintf_s(buffer, _CVTBUFSIZE, TEXT("Number of Multiprocessors: %d"), cDP.multiProcessorCount);

						SetWindowText(hWndEdit2, buffer);

						swprintf_s(buffer, _CVTBUFSIZE, TEXT("Shared Memory per Multiprocessor: %llu bytes"), cDP.sharedMemPerMultiprocessor);

						SetWindowText(hWndEdit3, buffer);
					}

					return (INT_PTR)TRUE;
				}
			}
		}

		break;
	case WM_CLOSE:
		EndDialog(hDlg, LOWORD(wParam));
		return (INT_PTR)TRUE;
	}

	return (INT_PTR)FALSE;
}

INT_PTR CALLBACK WndPlot(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	static int cxChar;
	static int cyChar;

	switch (message)
	{
	case WM_INITDIALOG:
	{
		cxChar = LOWORD(GetDialogBaseUnits());
		cyChar = HIWORD(GetDialogBaseUnits());
	}

	return (INT_PTR)TRUE;
	case WM_PAINT:
	{
		HBRUSH hBrush = CreateSolidBrush(RGB(255, 255, 255));
		HPEN     hPen = CreatePen(PS_DASH, 1, RGB(255, 0, 0));
		HPEN     hPEN = CreatePen(PS_DOT, 1, RGB(0, 0, 255));

		/*
		unsigned int uL = 42;
		unsigned int uT = 8;
		*/

		unsigned int uW = cxChar * 24;
		unsigned int uH = 6 * cyChar + 10;

		unsigned int i;
		PAINTSTRUCT ps;
		HDC hdc = BeginPaint(hDlg, &ps);

		SelectObject(hdc, hBrush);
		Rectangle(hdc, 42, 8, 42 + uW, 8 + uH);

		unsigned int s = 1;
		unsigned int r;

		if ((*lastButton) == 6)
		{
			float min;
			float max;

			if (SMO == true)
			{
				SelectObject(hdc, hPEN);

				if (ny <= uW)
				{
					r = ((uW - ny) / 2);
				}
				else
				{
					s = (ny / uW) + ((ny % uW) > 0 ? 1 : 0);
					r = (uW - (ny / s)) / 2;
				}

				min = ((float)(PLOT[0]));
				for (i = 1; i < ny; i++)
				{
					if (((float)(PLOT[i])) < min)
					{
						min = ((float)(PLOT[i]));
					}
				}
				for (i = 0; i < ny; i++)
				{
					if (((float)(plot[i])) < min)
					{
						min = ((float)(plot[i]));
					}
				}
				max = ((float)(PLOT[0]));
				for (i = 1; i < ny; i++)
				{
					if (((float)(PLOT[i])) > max)
					{
						max = ((float)(PLOT[i]));
					}
				}
				for (i = 0; i < ny; i++)
				{
					if (((float)(plot[i])) > max)
					{
						max = ((float)(plot[i]));
					}
				}

				MoveToEx(hdc, 42 + r, 8 + (int)(((max - (float)(PLOT[0])) / (max - min)) * ((float)(uH - 1))), (LPPOINT)NULL);
				for (i = s; i < ny; i += s)
				{
					LineTo(hdc, 42 + r + (i / s), 8 + (int)(((max - (float)(PLOT[i])) / (max - min)) * ((float)(uH - 1))));
				}

				SelectObject(hdc, hPen);

				MoveToEx(hdc, 42 + r, 8 + (int)(((max - (float)(plot[0])) / (max - min)) * ((float)(uH - 1))), (LPPOINT)NULL);
				for (i = s; i < ny; i += s)
				{
					LineTo(hdc, 42 + r + (i / s), 8 + (int)(((max - (float)(plot[i])) / (max - min)) * ((float)(uH - 1))));
				}
			}
			else
			{
				SelectObject(hdc, hPen);

				if (ny <= uW)
				{
					r = ((uW - ny) / 2);
				}
				else
				{
					s = (ny / uW) + ((ny % uW) > 0 ? 1 : 0);
					r = (uW - (ny / s)) / 2;
				}

				min = ((float)(plot[0]));
				for (i = 1; i < ny; i++)
				{
					if (((float)(plot[i])) < min)
					{
						min = ((float)(plot[i]));
					}
				}
				max = ((float)(plot[0]));
				for (i = 1; i < ny; i++)
				{
					if (((float)(plot[i])) > max)
					{
						max = ((float)(plot[i]));
					}
				}

				MoveToEx(hdc, 42 + r, 8 + (int)(((max - (float)(plot[0])) / (max - min)) * ((float)(uH - 1))), (LPPOINT)NULL);
				for (i = s; i < ny; i += s)
				{
					LineTo(hdc, 42 + r + (i / s), 8 + (int)(((max - (float)(plot[i])) / (max - min)) * ((float)(uH - 1))));
				}
			}
		}
		else
		{
			float min;
			float max;

			if (SMO == true)
			{
				SelectObject(hdc, hPEN);

				if (nx <= uW)
				{
					r = ((uW - nx) / 2);
				}
				else
				{
					s = (nx / uW) + ((nx % uW) > 0 ? 1 : 0);
					r = (uW - (nx / s)) / 2;
				}

				min = ((float)(PLOT[0]));
				for (i = 1; i < nx; i++)
				{
					if (((float)(PLOT[i])) < min)
					{
						min = ((float)(PLOT[i]));
					}
				}
				for (i = 0; i < nx; i++)
				{
					if (((float)(plot[i])) < min)
					{
						min = ((float)(plot[i]));
					}
				}
				max = ((float)(PLOT[0]));
				for (i = 1; i < nx; i++)
				{
					if (((float)(PLOT[i])) > max)
					{
						max = ((float)(PLOT[i]));
					}
				}
				for (i = 0; i < nx; i++)
				{
					if (((float)(plot[i])) > max)
					{
						max = ((float)(plot[i]));
					}
				}

				MoveToEx(hdc, 42 + r, 8 + (int)(((max - (float)(PLOT[0])) / (max - min)) * ((float)(uH - 1))), (LPPOINT)NULL);
				for (i = s; i < nx; i += s)
				{
					LineTo(hdc, 42 + r + (i / s), 8 + (int)(((max - (float)(PLOT[i])) / (max - min)) * ((float)(uH - 1))));
				}

				SelectObject(hdc, hPen);

				MoveToEx(hdc, 42 + r, 8 + (int)(((max - (float)(plot[0])) / (max - min)) * ((float)(uH - 1))), (LPPOINT)NULL);
				for (i = s; i < nx; i += s)
				{
					LineTo(hdc, 42 + r + (i / s), 8 + (int)(((max - (float)(plot[i])) / (max - min)) * ((float)(uH - 1))));
				}
			}
			else
			{
				SelectObject(hdc, hPen);

				if (nx <= uW)
				{
					r = ((uW - nx) / 2);
				}
				else
				{
					s = (nx / uW) + ((nx % uW) > 0 ? 1 : 0);
					r = (uW - (nx / s)) / 2;
				}

				min = ((float)(plot[0]));
				for (i = 1; i < nx; i++)
				{
					if (((float)(plot[i])) < min)
					{
						min = ((float)(plot[i]));
					}
				}
				max = ((float)(plot[0]));
				for (i = 1; i < nx; i++)
				{
					if (((float)(plot[i])) > max)
					{
						max = ((float)(plot[i]));
					}
				}

				MoveToEx(hdc, 42 + r, 8 + (int)(((max - (float)(plot[0])) / (max - min)) * ((float)(uH - 1))), (LPPOINT)NULL);
				for (i = s; i < nx; i += s)
				{
					LineTo(hdc, 42 + r + (i / s), 8 + (int)(((max - (float)(plot[i])) / (max - min)) * ((float)(uH - 1))));
				}
			}
		}

		DeleteObject(hPen);
		DeleteObject(hPEN);
		DeleteObject(hBrush);

		EndPaint(hDlg, &ps);
	}

	break;
	case WM_COMMAND:
		if (LOWORD(wParam) == IDOK)
		{
			EndDialog(hDlg, LOWORD(wParam));
			return (INT_PTR)TRUE;
		}
		else
		{
			if (LOWORD(wParam) == IDSAVE)
			{
				HGDIOBJ   obj;
				HDC     memDC = CreateCompatibleDC(GetDC(hDlg));
				HBITMAP memBM = CreateCompatibleBitmap(GetDC(hDlg), cxChar * 24, 6 * cyChar + 10);
				obj = SelectObject(memDC, memBM);

				BitBlt(memDC, 0, 0, cxChar * 24, 6 * cyChar + 10, GetDC(hDlg), 42, 8, SRCCOPY);
				CreateBMPFile(hDlg, TEXT("p.bmp"), CreateBitmapInfoStruct(hDlg, memBM), memBM, memDC);

				SelectObject(memDC, obj);
				DeleteObject(memBM);
				DeleteObject(memDC);

				EndDialog(hDlg, LOWORD(wParam));
				return (INT_PTR)TRUE;
			}
		}

		break;
	case WM_CLOSE:
		EndDialog(hDlg, LOWORD(wParam));
		return (INT_PTR)TRUE;
	}

	return (INT_PTR)FALSE;
}

INT_PTR CALLBACK aboutpr(HWND hDlg, UINT message, WPARAM wParam, LPARAM lParam)
{
	UNREFERENCED_PARAMETER(lParam);
	switch (message)
	{
	case WM_INITDIALOG:
	{
		RECT rect;
		RECT Rect;

		GetWindowRect(hDlg, &rect);
		GetWindowRect(GetParent(hDlg), &Rect);

		long l1;
		long l2;

		l1 = (rect.right - rect.left);
		l2 = (rect.bottom - rect.top);

		MoveWindow(hDlg, Rect.left + ((Rect.right - Rect.left) - l1) / 2, Rect.top + ((Rect.bottom - Rect.top) - l2) / 2, l1, l2, true);
	}

		return (INT_PTR)TRUE;
	case WM_COMMAND:
		if (LOWORD(wParam) == IDOK)
		{
			EndDialog(hDlg, LOWORD(wParam));
			return (INT_PTR)TRUE;
		}

		break;
	}
	return (INT_PTR)FALSE;
}

DWORD WINAPI FL(LPVOID lpParam)
{
	unsigned int id = PtrToInt(lpParam);

	unsigned int i;
	unsigned int j;
	unsigned int k;

	float *dc = (float*)malloc(nd * sizeof(float));

	if (fb == true)
	{
		dc[0] = -((sqrt(2.0) * (float)ny) / 2.0) * (((float)(a + d)) / (float)d) + (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd)) / 2.0 + cor;

		for (i = 1; i < nd; i++)
		{
			dc[i] = dc[i - 1] + (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd));
		}
	}
	else
	{
		dc[0] = -((sqrt(2.0) * (float)ny) / 2.0) + ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0 + cor;

		for (i = 1; i < nd; i++)
		{
			dc[i] = dc[i - 1] + (sqrt(2.0) * (float)ny) / ((float)nd);
		}
	}

	float x1;
	float x2;
	float y1;
	float y2;

	float *xl = (float*)malloc((ny + 1) * sizeof(float));
	float *yl = (float*)malloc((nx + 1) * sizeof(float));

	float xLoLimit;
	float xUpLimit;
	float yLoLimit;
	float yUpLimit;

	unsigned int nyPlusOne = ny + 1;
	unsigned int nxPlusOne = nx + 1;
	unsigned int nyMinusOne = ny - 1;
	unsigned int nxMinusOne = nx - 1;

	xLoLimit = -((((float)ny) - 1.0) / 2.0 + 0.5);
	xUpLimit = ((((float)ny) - 1.0) / 2.0 + 0.5);
	yLoLimit = -((((float)nx) - 1.0) / 2.0 + 0.5);
	yUpLimit = ((((float)nx) - 1.0) / 2.0 + 0.5);

	xl[0] = xLoLimit;
	for (i = 1; i < nyPlusOne; i++)
	{
		xl[i] = xl[i - 1] + 1.0;
	}

	yl[0] = yLoLimit;
	for (i = 1; i < nxPlusOne; i++)
	{
		yl[i] = yl[i - 1] + 1.0;
	}

	float xhrz;
	float yhrz;
	float xvrt;
	float yvrt;

	float f;
	float m;
	float b;
	float Sinf;
	float Sinfd;
	float Sinfa;
	float Cosf;
	float Cosfd;
	float Cosfa;

	float xcm;
	float ycm;
	unsigned int Lin;
	unsigned int Col;
	unsigned int Ind;
	float seg;

	float *xV = (float*)malloc(((ny + 1) + (nx + 1)) * sizeof(float));
	float *yV = (float*)malloc(((ny + 1) + (nx + 1)) * sizeof(float));
	std::vector<std::pair<float, float>> Vp;
	std::set<std::pair<float, float>> Sp;
	std::set<float> Sx;
	std::set<float> Sy;
	std::set<std::pair<float, float>>::iterator STitp;
	std::vector<unsigned int> Vind;
	std::vector<float> VSeg;
	unsigned int nEl;

	float Var1 = (((float)ny) - 1.0) / 2.0 + 0.5;
	float Var2 = (((float)nx) - 1.0) / 2.0 + 0.5;

	unsigned int J1;
	unsigned int J2;

	i = (nv / nT);
	J1 = id * i;
	if (id < (nT - 1))
	{
		J2 = J1 + i;
	}
	else
	{
		J2 = nv;
	}

	float *pmO;

	pmO = mOv[id];
	for (i = 0; i < nIn2; i++)
	{
		pmO[iIn2[i]] = 0.0;
	}

	c1 = ((lv - fv) / (float)nv);

	unsigned int aux1;
	unsigned int aux2;
	for (j = J1; j < J2; j++)
	{
		f = (fv + ((float)j) * c1);

		Sinf = sin(f);
		Sinfd = (rot == true ? (+d) * (-Sinf) : (+d) * (+Sinf));
		Sinfa = Sinf * (-a);
		Cosf = cos(f);
		Cosfd = (+d) * (+Cosf);
		Cosfa = Cosf * (-a);

		if (fb == true)
		{
			x1 = Cosfd;
			y1 = Sinfd;
		}

		for (i = 0; i < nd; i++)
		{
			aux1 = i * nv + j;
			Z[aux1].count = 0;
			Z[aux1].index = NULL;
			Z[aux1].intersection = NULL;
			Z[aux1].sumofintersections = 0.0;

			nEl = 0;

			if (fb == false)
			{
				if (rot == true)
				{
					x1 = (+Cosf) * (+d) + (+Sinf) * (dc[i]);
					y1 = (-Sinf) * (+d) + (+Cosf) * (dc[i]);
				}
				else
				{
					x1 = (+Cosf) * (+d) + (-Sinf) * (dc[i]);
					y1 = (+Sinf) * (+d) + (+Cosf) * (dc[i]);
				}
			}

			if (rot == true)
			{
				x2 = (+Cosf) * (-a) + (+Sinf) * (dc[i]);
				y2 = (-Sinf) * (-a) + (+Cosf) * (dc[i]);
			}
			else
			{
				x2 = (+Cosf) * (-a) + (-Sinf) * (dc[i]);
				y2 = (+Sinf) * (-a) + (+Cosf) * (dc[i]);
			}

			if (x1 != x2)
			{
				if (y1 != y2)
				{
					m = (y2 - y1) / (x2 - x1);
					b = y1 - m * x1;

					for (k = 0; k < nxPlusOne; k++)
					{
						xhrz = (yl[k] - b) / m;
						yhrz = yl[k];
						if ((xhrz >= xLoLimit) && (xhrz <= xUpLimit) && (yhrz >= yLoLimit) && (yhrz <= yUpLimit))
						{
							if (Sp.find(std::make_pair(xhrz, yhrz)) == Sp.end())
							{
								Vp.push_back(std::make_pair(xhrz, yhrz));
								Sp.insert(std::make_pair(xhrz, yhrz));

								Sx.insert(xhrz);
								Sy.insert(yhrz);
								nEl++;
							}
						}
					}
					for (k = 0; k < nyPlusOne; k++)
					{
						xvrt = xl[k];
						yvrt = m * xl[k] + b;
						if ((xvrt >= xLoLimit) && (xvrt <= xUpLimit) && (yvrt >= yLoLimit) && (yvrt <= yUpLimit))
						{
							if ((Sy.find(yvrt) == Sy.end()) && (Sx.find(xvrt) == Sx.end()))
							{
								Vp.push_back(std::make_pair(xvrt, yvrt));
								Sp.insert(std::make_pair(xvrt, yvrt));

								Sx.insert(xvrt);
								Sy.insert(yvrt);
								nEl++;
							}
							else
							{
								unsigned int Ok = 1;
								if (Sy.find(yvrt) != Sy.end())
								{
									for (STitp = Sp.begin(); STitp != Sp.end(); STitp++)
									{
										if (abs((*STitp).first - xvrt) < 1.0)
										{
											Ok = 0;
											break;
										}
									}
								}
								else
								{
									for (STitp = Sp.begin(); STitp != Sp.end(); STitp++)
									{
										if (abs((*STitp).second - yvrt) < 1.0)
										{
											Ok = 0;
											break;
										}
									}
								}
								if (Ok == 1)
								{
									Vp.push_back(std::make_pair(xvrt, yvrt));
									Sp.insert(std::make_pair(xvrt, yvrt));

									Sx.insert(xvrt);
									Sy.insert(yvrt);
									nEl++;
								}
							}
						}
					}

					if (m >= 0)
					{
						sort(Vp.begin(), Vp.end(), Pcomparison1);
					}
					else
					{
						sort(Vp.begin(), Vp.end(), Pcomparison2);
					}

					for (k = 0; k < nEl; k++)
					{
						xV[k] = Vp[k].first;
						yV[k] = Vp[k].second;
					}

					if (nEl >= 2)
					{
						for (k = 1; k < nEl; k++)
						{
							xcm = (xV[k - 1] + xV[k]) / 2.0;
							ycm = (yV[k - 1] + yV[k]) / 2.0;
							Col = (unsigned int)floor(xcm + Var1);
							if (Col > nyMinusOne)
							{
								Col = Col - 1;
							}
							Lin = (unsigned int)floor(Var2 - ycm);
							if (Lin > nxMinusOne)
							{
								Lin = Lin - 1;
							}

							Ind = Lin * ny + Col;

							seg = sqrt(pow(xV[k] - xV[k - 1], 2) + pow(yV[k] - yV[k - 1], 2));

							Vind.push_back(Ind);
							VSeg.push_back(seg);
							Z[aux1].sumofintersections += seg;

							pmO[Ind] = pmO[Ind] + seg;

							if (SMO == true)
							{
								S[aux1] += seg * Oi1[Ind];
							}
						}
						Z[aux1].count = Vind.size();
						Z[aux1].index = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
						Z[aux1].intersection = (float*)malloc(Z[aux1].count * sizeof(float));

						aux2 = Z[aux1].count;
						for (k = 0; k < aux2; k++)
						{
							Z[aux1].index[k] = Vind[k];
							Z[aux1].intersection[k] = VSeg[k];
						}
					}
				}
				else
				{
					if ((y1 >= yLoLimit) && (y1 <= yUpLimit))
					{
						ycm = y1;
						Lin = (unsigned int)floor(Var2 - ycm);
						if (Lin > nxMinusOne)
						{
							Lin = Lin - 1;
						}

						for (k = 1; k <= ny; k++)
						{
							xcm = (xl[k - 1] + xl[k]) / 2.0;
							Col = (unsigned int)floor(xcm + Var1);
							if (Col > nyMinusOne)
							{
								Col = Col - 1;
							}

							Ind = Lin * ny + Col;

							Vind.push_back(Ind);
							VSeg.push_back(1.0);
							Z[aux1].sumofintersections += 1.0;

							pmO[Ind] = pmO[Ind] + 1.0;

							if (SMO == true)
							{
								S[aux1] += Oi1[Ind];
							}
						}
						Z[aux1].count = Vind.size();
						Z[aux1].index = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
						Z[aux1].intersection = (float*)malloc(Z[aux1].count * sizeof(float));

						aux2 = Z[aux1].count;
						for (k = 0; k < aux2; k++)
						{
							Z[aux1].index[k] = Vind[k];
							Z[aux1].intersection[k] = VSeg[k];
						}
					}
				}
			}
			else
			{
				if ((x1 >= xLoLimit) && (x1 <= xUpLimit))
				{
					xcm = x1;
					Col = (unsigned int)floor(xcm + Var1);
					if (Col > nyMinusOne)
					{
						Col = Col - 1;
					}

					for (k = 1; k <= nx; k++)
					{
						ycm = (yl[k - 1] + yl[k]) / 2.0;
						Lin = (unsigned int)floor(Var2 - ycm);
						if (Lin > nxMinusOne)
						{
							Lin = Lin - 1;
						}

						Ind = Lin * ny + Col;

						Vind.push_back(Ind);
						VSeg.push_back(1.0);
						Z[aux1].sumofintersections += 1.0;

						pmO[Ind] = pmO[Ind] + 1.0;

						if (SMO == true)
						{
							S[aux1] += Oi1[Ind];
						}
					}
					Z[aux1].count = Vind.size();
					Z[aux1].index = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
					Z[aux1].intersection = (float*)malloc(Z[aux1].count * sizeof(float));

					aux2 = Z[aux1].count;
					for (k = 0; k < aux2; k++)
					{
						Z[aux1].index[k] = Vind[k];
						Z[aux1].intersection[k] = VSeg[k];
					}
				}
			}

			Vp.clear();
			Sp.clear();
			Sx.clear();
			Sy.clear();

			Vind.clear();
			VSeg.clear();
		}

		if (id == 0)
		{
			InterlockedExchange(SystemMatrix, (unsigned int)((((float)(j - J1)) / ((float)(J2 - J1))) * 100.0));
		}
	}

	free(dc);
	free(xl);
	free(yl);
	free(xV);
	free(yV);

	InterlockedDecrement(busy + id);

	return 0;
}

DWORD WINAPI FB(LPVOID lpParam)
{
	unsigned int id = PtrToInt(lpParam);

	unsigned int i;
	unsigned int j;
	unsigned int k;
	unsigned int nxny = nx * ny;

	float *dc = (float*)malloc(nd * sizeof(float));
	if (dc == NULL)
	{
		MessageBox(NULL, TEXT("problem -> dc.."), TEXT("!"), MB_OK);
		Sleep(3000);
		exit(EXIT_FAILURE);
	}

	if (fb == true)
	{
		dc[0] = -((sqrt(2.0) * (float)ny) / 2.0) * (((float)(a + d)) / (float)d) + (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd)) / 2.0 + cor;

		for (i = 1; i < nd; i++)
		{
			dc[i] = dc[i - 1] + (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd));
		}
	}
	else
	{
		dc[0] = -((sqrt(2.0) * (float)ny) / 2.0) + ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0 + cor;

		for (i = 1; i < nd; i++)
		{
			dc[i] = dc[i - 1] + (sqrt(2.0) * (float)ny) / ((float)nd);
		}
	}

	float x1;
	float x2;
	float x3;
	float y1;
	float y2;
	float y3;

	float *xl = (float*)malloc((ny + 1) * sizeof(float));
	if (xl == NULL)
	{
		MessageBox(NULL, TEXT("problem -> xl.."), TEXT("!"), MB_OK);
		Sleep(3000);
		exit(EXIT_FAILURE);
	}
	float *yl = (float*)malloc((nx + 1) * sizeof(float));
	if (yl == NULL)
	{
		MessageBox(NULL, TEXT("problem -> yl.."), TEXT("!"), MB_OK);
		Sleep(3000);
		exit(EXIT_FAILURE);
	}

	float xLoLimit;
	float xUpLimit;
	float yLoLimit;
	float yUpLimit;

	unsigned int nyPlusOne = ny + 1;
	unsigned int nxPlusOne = nx + 1;
	unsigned int nyMinusOne = ny - 1;
	unsigned int nxMinusOne = nx - 1;

	xLoLimit = -((((float)ny) - 1.0) / 2.0 + 0.5);
	xUpLimit = ((((float)ny) - 1.0) / 2.0 + 0.5);
	yLoLimit = -((((float)nx) - 1.0) / 2.0 + 0.5);
	yUpLimit = ((((float)nx) - 1.0) / 2.0 + 0.5);

	xl[0] = xLoLimit;
	for (i = 1; i < nyPlusOne; i++)
	{
		xl[i] = xl[i - 1] + 1.0;
	}

	yl[0] = yLoLimit;
	for (i = 1; i < nxPlusOne; i++)
	{
		yl[i] = yl[i - 1] + 1.0;
	}

	float xhrz;
	float yhrz;
	float xvrt;
	float yvrt;

	float f;
	float m;
	float b;
	float Sinf;
	float Sinfd;
	float Sinfa;
	float Cosf;
	float Cosfd;
	float Cosfa;

	float xcm;
	float ycm;
	unsigned int Lin;
	unsigned int Col;

	float *xV1 = (float*)malloc(((ny + 1) + (nx + 1)) * sizeof(float));
	if (xV1 == NULL)
	{
		MessageBox(NULL, TEXT("problem -> xV1.."), TEXT("!"), MB_OK);
		Sleep(3000);
		exit(EXIT_FAILURE);
	}
	float *yV1 = (float*)malloc(((ny + 1) + (nx + 1)) * sizeof(float));
	if (yV1 == NULL)
	{
		MessageBox(NULL, TEXT("problem -> yV1.."), TEXT("!"), MB_OK);
		Sleep(3000);
		exit(EXIT_FAILURE);
	}
	float *xV2 = (float*)malloc(((ny + 1) + (nx + 1)) * sizeof(float));
	if (xV2 == NULL)
	{
		MessageBox(NULL, TEXT("problem -> xV2.."), TEXT("!"), MB_OK);
		Sleep(3000);
		exit(EXIT_FAILURE);
	}
	float *yV2 = (float*)malloc(((ny + 1) + (nx + 1)) * sizeof(float));
	if (yV2 == NULL)
	{
		MessageBox(NULL, TEXT("problem -> yV2.."), TEXT("!"), MB_OK);
		Sleep(3000);
		exit(EXIT_FAILURE);
	}

	std::vector<std::pair<float, float>> Vp;
	std::set<std::pair<float, float>> Sp;
	std::set<float> Sx;
	std::set<float> Sy;
	std::set<std::pair<float, float>>::iterator STitp;

	unsigned int nEl;

	float Var1 = (((float)ny) - 1.0) / 2.0 + 0.5;
	float Var2 = (((float)nx) - 1.0) / 2.0 + 0.5;

	std::vector<unsigned int> V1;
	std::vector<unsigned int> V2;
	std::vector<unsigned int> V3;
	std::set<unsigned int> ST;
	std::set<unsigned int> SL;
	std::set<unsigned int> SR;
	std::set<unsigned int>::iterator STit;
	std::set<float> setxL;
	std::set<float> setxR;
	std::set<float> setyU;
	std::set<float> setyD;

	for (i = 1; i < ny; i++)
	{
		setxL.insert(xl[i]);
	}
	for (i = 1; i < nx; i++)
	{
		setyU.insert(yl[i]);
	}

	unsigned int *Sitg;
	std::vector<COO> Sitl;
	std::vector<COO> Sitr;
	Sitg = (unsigned int*)malloc(nxny * 3 * sizeof(unsigned int));
	if (Sitg == NULL)
	{
		MessageBox(NULL, TEXT("problem -> Sitg.."), TEXT("!"), MB_OK);
		Sleep(3000);
		exit(EXIT_FAILURE);
	}

	COO coo;

	std::vector<unsigned int> *C1 = NULL;
	std::vector<unsigned int> *C2 = NULL;

	C1 = new std::vector<unsigned int>[nx];
	if (C1 == NULL)
	{
		MessageBox(NULL, TEXT("problem -> C1.."), TEXT("!"), MB_OK);
		Sleep(3000);
		exit(EXIT_FAILURE);
	}
	C2 = new std::vector<unsigned int>[nx];
	if (C2 == NULL)
	{
		MessageBox(NULL, TEXT("problem -> C2.."), TEXT("!"), MB_OK);
		Sleep(3000);
		exit(EXIT_FAILURE);
	}

	unsigned int i1;
	unsigned int j1;
	unsigned int k1;
	unsigned int k2;
	unsigned int s1;

	float X1;
	float X2;
	float Y1;
	float Y2;
	float xL;
	float xR;
	float yU;
	float yD;

	float Aux1;
	float Aux2;

	unsigned int ray1;
	unsigned int ray2;

	unsigned int J1;
	unsigned int J2;

	i = (nv / nT);
	J1 = id * i;
	if (id < (nT - 1))
	{
		J2 = J1 + i;
	}
	else
	{
		J2 = nv;
	}

	float *pmO;

	pmO = mOv[id];
	for (i = 0; i < nIn2; i++)
	{
		pmO[iIn2[i]] = 0.0;
	}

	c1 = ((lv - fv) / (float)nv);

	unsigned int aux1;
	for (j = J1; j < J2; j++)
	{
		f = (fv + ((float)j) * c1);

		Sinf = sin(f);
		Sinfd = (rot == true ? (+d) * (-Sinf) : (+d) * (+Sinf));
		Sinfa = Sinf * (-a);
		Cosf = cos(f);
		Cosfd = (+d) * (+Cosf);
		Cosfa = Cosf * (-a);

		if (fb == true)
		{
			x1 = Cosfd;
			y1 = Sinfd;
		}

		for (i = 0; i < nd; i++)
		{
			aux1 = i * nv + j;
			Z[aux1].count = 0;
			Z[aux1].index = NULL;
			Z[aux1].intersection = NULL;
			Z[aux1].sumofintersections = 0.0;

			nEl = 0;

			if (fb == false)
			{
				if (rot == true)
				{
					x1 = (+Cosf) * (+d) + (+Sinf) * (dc[i] - ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
					y1 = (-Sinf) * (+d) + (+Cosf) * (dc[i] - ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);

					x2 = (+Cosf) * (-a) + (+Sinf) * (dc[i] - ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
					y2 = (-Sinf) * (-a) + (+Cosf) * (dc[i] - ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
				}
				else
				{
					x1 = (+Cosf) * (+d) + (-Sinf) * (dc[i] - ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
					y1 = (+Sinf) * (+d) + (+Cosf) * (dc[i] - ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);

					x2 = (+Cosf) * (-a) + (-Sinf) * (dc[i] - ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
					y2 = (+Sinf) * (-a) + (+Cosf) * (dc[i] - ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
				}
			}
			else
			{
				if (rot == true)
				{
					x2 = (+Cosf) * (-a) + (+Sinf) * (dc[i] - (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd)) / 2.0);
					y2 = (-Sinf) * (-a) + (+Cosf) * (dc[i] - (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd)) / 2.0);
				}
				else
				{
					x2 = (+Cosf) * (-a) + (-Sinf) * (dc[i] - (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd)) / 2.0);
					y2 = (+Sinf) * (-a) + (+Cosf) * (dc[i] - (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd)) / 2.0);
				}
			}

			if (x1 != x2)
			{
				if (y1 != y2)
				{
					m = (y2 - y1) / (x2 - x1);
					b = y1 - m * x1;

					for (k = 0; k < nxPlusOne; k++)
					{
						xhrz = (yl[k] - b) / m;
						yhrz = yl[k];
						if ((xhrz >= xLoLimit) && (xhrz <= xUpLimit) && (yhrz >= yLoLimit) && (yhrz <= yUpLimit))
						{
							if (Sp.find(std::make_pair(xhrz, yhrz)) == Sp.end())
							{
								Vp.push_back(std::make_pair(xhrz, yhrz));
								Sp.insert(std::make_pair(xhrz, yhrz));

								Sx.insert(xhrz);
								Sy.insert(yhrz);
								nEl++;
							}
						}
					}
					for (k = 0; k < nyPlusOne; k++)
					{
						xvrt = xl[k];
						yvrt = (m * xl[k]) + b;
						if ((xvrt >= xLoLimit) && (xvrt <= xUpLimit) && (yvrt >= yLoLimit) && (yvrt <= yUpLimit))
						{
							if ((Sp.find(std::make_pair(xvrt, yvrt)) == Sp.end()))
							{
								if ((Sy.find(yvrt) == Sy.end()) && (Sx.find(xvrt) == Sx.end()))
								{
									Vp.push_back(std::make_pair(xvrt, yvrt));
									Sp.insert(std::make_pair(xvrt, yvrt));

									Sx.insert(xvrt);
									Sy.insert(yvrt);
									nEl++;
								}
								else
								{
									unsigned int Ok = 1;
									if (Sy.find(yvrt) != Sy.end())
									{
										for (STitp = Sp.begin(); STitp != Sp.end(); STitp++)
										{
											if (abs((*STitp).first - xvrt) < 1.0)
											{
												Ok = 0;
												break;
											}
										}
									}
									else
									{
										for (STitp = Sp.begin(); STitp != Sp.end(); STitp++)
										{
											if (abs((*STitp).second - yvrt) < 1.0)
											{
												Ok = 0;
												break;
											}
										}
									}
									if (Ok == 1)
									{
										Vp.push_back(std::make_pair(xvrt, yvrt));
										Sp.insert(std::make_pair(xvrt, yvrt));

										Sx.insert(xvrt);
										Sy.insert(yvrt);
										nEl++;
									}
								}
							}
						}
					}

					if (m >= 0)
					{
						sort(Vp.begin(), Vp.end(), Pcomparison1);
					}
					else
					{
						sort(Vp.begin(), Vp.end(), Pcomparison2);
					}

					for (k = 0; k < nEl; k++)
					{
						xV1[k] = Vp[k].first;
						yV1[k] = Vp[k].second;
					}

					if (nEl >= 2)
					{
						for (k = 1; k < nEl; k++)
						{
							if (yV1[k - 1] != yV1[k])
							{
								if (xV1[k - 1] != xV1[k])
								{
									xcm = (xV1[k - 1] + xV1[k]) / 2.0;
									ycm = (yV1[k - 1] + yV1[k]) / 2.0;
									Col = (unsigned int)floor(xcm + Var1);
									if (Col > nyMinusOne)
									{
										Col = Col - 1;
									}
									Lin = (unsigned int)floor(Var2 - ycm);
									if (Lin > nxMinusOne)
									{
										Lin = Lin - 1;
									}
									V1.push_back(Lin * ny + Col);
									coo.X1 = xV1[k - 1];
									coo.Y1 = yV1[k - 1];
									coo.X2 = xV1[k];
									coo.Y2 = yV1[k];
									Sitl.push_back(coo);
								}
								else
								{
									if (y1 < y2)
									{
										xcm = (xV1[k - 1] + xV1[k]) / 2.0;
										ycm = (yV1[k - 1] + yV1[k]) / 2.0;
										Col = (unsigned int)floor(xcm + Var1);
										if (Col > nyMinusOne)
										{
											Col = Col - 1;
										}
										Lin = (unsigned int)floor(Var2 - ycm);
										if (Lin > nxMinusOne)
										{
											Lin = Lin - 1;
										}
										V1.push_back(Lin * ny + Col);
										coo.X1 = xV1[k - 1];
										coo.Y1 = yV1[k - 1];
										coo.X2 = xV1[k];
										coo.Y2 = yV1[k];
										Sitl.push_back(coo);
									}
									else
									{
										if (setxL.find(xV1[k - 1]) == setxL.end())
										{
											xcm = (xV1[k - 1] + xV1[k]) / 2.0;
											ycm = (yV1[k - 1] + yV1[k]) / 2.0;
											Col = (unsigned int)floor(xcm + Var1);
											if (Col > nyMinusOne)
											{
												Col = Col - 1;
											}
											Lin = (unsigned int)floor(Var2 - ycm);
											if (Lin > nxMinusOne)
											{
												Lin = Lin - 1;
											}
											V1.push_back(Lin * ny + Col);
											coo.X1 = xV1[k - 1];
											coo.Y1 = yV1[k - 1];
											coo.X2 = xV1[k];
											coo.Y2 = yV1[k];
											Sitl.push_back(coo);
										}
										else
										{
											xcm = (xV1[k - 1] + xV1[k]) / 2.0;
											ycm = (yV1[k - 1] + yV1[k]) / 2.0;
											Col = (unsigned int)floor((xcm - 1.0) + Var1);
											if (Col > nyMinusOne)
											{
												Col = Col - 1;
											}
											Lin = (unsigned int)floor(Var2 - ycm);
											if (Lin > nxMinusOne)
											{
												Lin = Lin - 1;
											}
											V1.push_back(Lin * ny + Col);
											coo.X1 = xV1[k - 1];
											coo.Y1 = yV1[k - 1];
											coo.X2 = xV1[k];
											coo.Y2 = yV1[k];
											Sitl.push_back(coo);
										}
									}
								}
							}
							else
							{
								if (x1 < x2)
								{
									xcm = (xV1[k - 1] + xV1[k]) / 2.0;
									ycm = (yV1[k - 1] + yV1[k]) / 2.0;
									Col = (unsigned int)floor(xcm + Var1);
									if (Col > nyMinusOne)
									{
										Col = Col - 1;
									}
									Lin = (unsigned int)floor(Var2 - ycm);
									if (Lin > nxMinusOne)
									{
										Lin = Lin - 1;
									}
									V1.push_back(Lin * ny + Col);
									coo.X1 = xV1[k - 1];
									coo.Y1 = yV1[k - 1];
									coo.X2 = xV1[k];
									coo.Y2 = yV1[k];
									Sitl.push_back(coo);
								}
								else
								{
									if (setyU.find(yV1[k - 1]) == setyU.end())
									{
										xcm = (xV1[k - 1] + xV1[k]) / 2.0;
										ycm = (yV1[k - 1] + yV1[k]) / 2.0;
										Col = (unsigned int)floor(xcm + Var1);
										if (Col > nyMinusOne)
										{
											Col = Col - 1;
										}
										Lin = (unsigned int)floor(Var2 - ycm);
										if (Lin > nxMinusOne)
										{
											Lin = Lin - 1;
										}
										V1.push_back(Lin * ny + Col);
										coo.X1 = xV1[k - 1];
										coo.Y1 = yV1[k - 1];
										coo.X2 = xV1[k];
										coo.Y2 = yV1[k];
										Sitl.push_back(coo);
									}
									else
									{
										xcm = (xV1[k - 1] + xV1[k]) / 2.0;
										ycm = (yV1[k - 1] + yV1[k]) / 2.0;
										Col = (unsigned int)floor(xcm + Var1);
										if (Col > nyMinusOne)
										{
											Col = Col - 1;
										}
										Lin = (unsigned int)floor(Var2 - (ycm + 1.0));
										if (Lin > nxMinusOne)
										{
											Lin = Lin - 1;
										}
										V1.push_back(Lin * ny + Col);
										coo.X1 = xV1[k - 1];
										coo.Y1 = yV1[k - 1];
										coo.X2 = xV1[k];
										coo.Y2 = yV1[k];
										Sitl.push_back(coo);
									}
								}
							}
						}
					}
				}
				else
				{
					if (x1 < x2)
					{
						if ((y1 > yLoLimit) && (y1 <= yUpLimit))
						{
							Lin = (unsigned int)floor(Var2 - y1);
							if (Lin > nxMinusOne)
							{
								Lin = Lin - 1;
							}
							for (k = 1; k <= ny; k++)
							{
								xcm = (xl[k - 1] + xl[k]) / 2.0;
								Col = (unsigned int)floor(xcm + Var1);
								if (Col > nyMinusOne)
								{
									Col = Col - 1;
								}
								V1.push_back(Lin * ny + Col);
								coo.X1 = xl[k - 1];
								coo.Y1 = y1;
								coo.X2 = xl[k];
								coo.Y2 = y1;
								Sitl.push_back(coo);
							}
						}
					}
					else
					{
						if ((y1 >= yLoLimit) && (y1 < yUpLimit))
						{
							if (setyU.find(y1) == setyU.end())
							{
								Lin = (unsigned int)floor(Var2 - y1);
								if (Lin > nxMinusOne)
								{
									Lin = Lin - 1;
								}
								for (k = 1; k <= ny; k++)
								{
									xcm = (xl[k - 1] + xl[k]) / 2.0;
									Col = (unsigned int)floor(xcm + Var1);
									if (Col > nyMinusOne)
									{
										Col = Col - 1;
									}
									V1.push_back(Lin * ny + Col);
									coo.X1 = xl[k - 1];
									coo.Y1 = y1;
									coo.X2 = xl[k];
									coo.Y2 = y1;
									Sitl.push_back(coo);
								}
							}
							else
							{
								Lin = (unsigned int)floor(Var2 - (y1 + 1.0));
								if (Lin > nxMinusOne)
								{
									Lin = Lin - 1;
								}
								for (k = 1; k <= ny; k++)
								{
									xcm = (xl[k - 1] + xl[k]) / 2.0;
									Col = (unsigned int)floor(xcm + Var1);
									if (Col > nyMinusOne)
									{
										Col = Col - 1;
									}
									V1.push_back(Lin * ny + Col);
									coo.X1 = xl[k - 1];
									coo.Y1 = y1;
									coo.X2 = xl[k];
									coo.Y2 = y1;
									Sitl.push_back(coo);
								}
							}
						}
					}
				}
			}
			else
			{
				if (y1 < y2)
				{
					if ((x1 >= xLoLimit) && (x1 < xUpLimit))
					{
						Col = (unsigned int)floor(x1 + Var1);
						if (Col > nyMinusOne)
						{
							Col = Col - 1;
						}
						for (k = 1; k <= nx; k++)
						{
							ycm = (yl[k - 1] + yl[k]) / 2.0;
							Lin = (unsigned int)floor(Var2 - ycm);
							if (Lin > nxMinusOne)
							{
								Lin = Lin - 1;
							}
							V1.push_back(Lin * ny + Col);
							coo.X1 = x1;
							coo.Y1 = yl[k - 1];
							coo.X2 = x1;
							coo.Y2 = yl[k];
							Sitl.push_back(coo);
						}
					}
				}
				else
				{
					if ((x1 > xLoLimit) && (x1 <= xUpLimit))
					{
						if (setxL.find(x1) == setxL.end())
						{
							Col = (unsigned int)floor(x1 + Var1);
							if (Col > nyMinusOne)
							{
								Col = Col - 1;
							}
							for (k = 1; k <= nx; k++)
							{
								ycm = (yl[k - 1] + yl[k]) / 2.0;
								Lin = (unsigned int)floor(Var2 - ycm);
								if (Lin > nxMinusOne)
								{
									Lin = Lin - 1;
								}
								V1.push_back(Lin * ny + Col);
								coo.X1 = x1;
								coo.Y1 = yl[k - 1];
								coo.X2 = x1;
								coo.Y2 = yl[k];
								Sitl.push_back(coo);
							}
						}
						else
						{
							Col = (unsigned int)floor((x1 - 1.0) + Var1);
							if (Col > nyMinusOne)
							{
								Col = Col - 1;
							}
							for (k = 1; k <= nx; k++)
							{
								ycm = (yl[k - 1] + yl[k]) / 2.0;
								Lin = (unsigned int)floor(Var2 - ycm);
								if (Lin > nxMinusOne)
								{
									Lin = Lin - 1;
								}
								V1.push_back(Lin * ny + Col);
								coo.X1 = x1;
								coo.Y1 = yl[k - 1];
								coo.X2 = x1;
								coo.Y2 = yl[k];
								Sitl.push_back(coo);
							}
						}
					}
				}
			}
			Vp.clear();
			Sp.clear();
			Sx.clear();
			Sy.clear();

			nEl = 0;

			if (fb == false)
			{
				if (rot == true)
				{
					x1 = (+Cosf) * (+d) + (+Sinf) * (dc[i] + ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
					y1 = (-Sinf) * (+d) + (+Cosf) * (dc[i] + ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);

					x3 = (+Cosf) * (-a) + (+Sinf) * (dc[i] + ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
					y3 = (-Sinf) * (-a) + (+Cosf) * (dc[i] + ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
				}
				else
				{
					x1 = (+Cosf) * (+d) + (-Sinf) * (dc[i] + ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
					y1 = (+Sinf) * (+d) + (+Cosf) * (dc[i] + ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);

					x3 = (+Cosf) * (-a) + (-Sinf) * (dc[i] + ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
					y3 = (+Sinf) * (-a) + (+Cosf) * (dc[i] + ((sqrt(2.0) * (float)ny) / ((float)nd)) / 2.0);
				}
			}
			else
			{
				if (rot == true)
				{
					x3 = (+Cosf) * (-a) + (+Sinf) * (dc[i] + (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd)) / 2.0);
					y3 = (-Sinf) * (-a) + (+Cosf) * (dc[i] + (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd)) / 2.0);
				}
				else
				{
					x3 = (+Cosf) * (-a) + (-Sinf) * (dc[i] + (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd)) / 2.0);
					y3 = (+Sinf) * (-a) + (+Cosf) * (dc[i] + (((sqrt(2.0) * (float)ny) * (((float)(a + d)) / (float)d)) / ((float)nd)) / 2.0);
				}
			}

			if (x1 != x3)
			{
				if (y1 != y3)
				{
					m = (y3 - y1) / (x3 - x1);
					b = y1 - m * x1;

					for (k = 0; k < nyPlusOne; k++)
					{
						xhrz = (yl[k] - b) / m;
						yhrz = yl[k];
						if ((xhrz >= xLoLimit) && (xhrz <= xUpLimit) && (yhrz >= yLoLimit) && (yhrz <= yUpLimit))
						{
							if (Sp.find(std::make_pair(xhrz, yhrz)) == Sp.end())
							{
								Vp.push_back(std::make_pair(xhrz, yhrz));
								Sp.insert(std::make_pair(xhrz, yhrz));

								Sx.insert(xhrz);
								Sy.insert(yhrz);
								nEl++;
							}
						}
					}
					for (k = 0; k < nxPlusOne; k++)
					{
						xvrt = xl[k];
						yvrt = (m * xl[k]) + b;
						if ((xvrt >= xLoLimit) && (xvrt <= xUpLimit) && (yvrt >= yLoLimit) && (yvrt <= yUpLimit))
						{
							if ((Sp.find(std::make_pair(xvrt, yvrt)) == Sp.end()))
							{
								if ((Sy.find(yvrt) == Sy.end()) && (Sx.find(xvrt) == Sx.end()))
								{
									Vp.push_back(std::make_pair(xvrt, yvrt));
									Sp.insert(std::make_pair(xvrt, yvrt));

									Sx.insert(xvrt);
									Sy.insert(yvrt);
									nEl++;
								}
								else
								{
									unsigned int Ok = 1;
									if (Sy.find(yvrt) != Sy.end())
									{
										for (STitp = Sp.begin(); STitp != Sp.end(); STitp++)
										{
											if (abs((*STitp).first - xvrt) < 1.0)
											{
												Ok = 0;
												break;
											}
										}
									}
									else
									{
										for (STitp = Sp.begin(); STitp != Sp.end(); STitp++)
										{
											if (abs((*STitp).second - yvrt) < 1.0)
											{
												Ok = 0;
												break;
											}
										}
									}
									if (Ok == 1)
									{
										Vp.push_back(std::make_pair(xvrt, yvrt));
										Sp.insert(std::make_pair(xvrt, yvrt));

										Sx.insert(xvrt);
										Sy.insert(yvrt);
										nEl++;
									}
								}
							}
						}
					}

					if (m >= 0)
					{
						sort(Vp.begin(), Vp.end(), Pcomparison1);
					}
					else
					{
						sort(Vp.begin(), Vp.end(), Pcomparison2);
					}

					for (k = 0; k < nEl; k++)
					{
						xV2[k] = Vp[k].first;
						yV2[k] = Vp[k].second;
					}

					if (nEl >= 2)
					{
						for (k = 1; k < nEl; k++)
						{
							if (yV2[k - 1] != yV2[k])
							{
								if (xV2[k - 1] != xV2[k])
								{
									xcm = (xV2[k - 1] + xV2[k]) / 2.0;
									ycm = (yV2[k - 1] + yV2[k]) / 2.0;
									Col = (unsigned int)floor(xcm + Var1);
									if (Col > nyMinusOne)
									{
										Col = Col - 1;
									}
									Lin = (unsigned int)floor(Var2 - ycm);
									if (Lin > nxMinusOne)
									{
										Lin = Lin - 1;
									}
									V2.push_back(Lin * ny + Col);
									coo.X1 = xV2[k - 1];
									coo.Y1 = yV2[k - 1];
									coo.X2 = xV2[k];
									coo.Y2 = yV2[k];
									Sitr.push_back(coo);
								}
								else
								{
									if (y1 < y3)
									{
										if (setxL.find(xV2[k - 1]) == setxL.end())
										{
											xcm = (xV2[k - 1] + xV2[k]) / 2.0;
											ycm = (yV2[k - 1] + yV2[k]) / 2.0;
											Col = (unsigned int)floor(xcm + Var1);
											if (Col > nyMinusOne)
											{
												Col = Col - 1;
											}
											Lin = (unsigned int)floor(Var2 - ycm);
											if (Lin > nxMinusOne)
											{
												Lin = Lin - 1;
											}
											V2.push_back(Lin * ny + Col);
											coo.X1 = xV2[k - 1];
											coo.Y1 = yV2[k - 1];
											coo.X2 = xV2[k];
											coo.Y2 = yV2[k];
											Sitr.push_back(coo);
										}
										else
										{
											xcm = (xV2[k - 1] + xV2[k]) / 2.0;
											ycm = (yV2[k - 1] + yV2[k]) / 2.0;
											Col = (unsigned int)floor((xcm - 1.0) + Var1);
											if (Col > nyMinusOne)
											{
												Col = Col - 1;
											}
											Lin = (unsigned int)floor(Var2 - ycm);
											if (Lin > nxMinusOne)
											{
												Lin = Lin - 1;
											}
											V2.push_back(Lin * ny + Col);
											coo.X1 = xV2[k - 1];
											coo.Y1 = yV2[k - 1];
											coo.X2 = xV2[k];
											coo.Y2 = yV2[k];
											Sitr.push_back(coo);
										}
									}
									else
									{
										xcm = (xV2[k - 1] + xV2[k]) / 2.0;
										ycm = (yV2[k - 1] + yV2[k]) / 2.0;
										Col = (unsigned int)floor(xcm + Var1);
										if (Col > nyMinusOne)
										{
											Col = Col - 1;
										}
										Lin = (unsigned int)floor(Var2 - ycm);
										if (Lin > nxMinusOne)
										{
											Lin = Lin - 1;
										}
										V2.push_back(Lin * ny + Col);
										coo.X1 = xV2[k - 1];
										coo.Y1 = yV2[k - 1];
										coo.X2 = xV2[k];
										coo.Y2 = yV2[k];
										Sitr.push_back(coo);
									}
								}
							}
							else
							{
								if (x1 < x3)
								{
									if (setyU.find(yV2[k - 1]) == setyU.end())
									{
										xcm = (xV2[k - 1] + xV2[k]) / 2.0;
										ycm = (yV2[k - 1] + yV2[k]) / 2.0;
										Col = (unsigned int)floor(xcm + Var1);
										if (Col > nyMinusOne)
										{
											Col = Col - 1;
										}
										Lin = (unsigned int)floor(Var2 - ycm);
										if (Lin > nxMinusOne)
										{
											Lin = Lin - 1;
										}
										V2.push_back(Lin * ny + Col);
										coo.X1 = xV2[k - 1];
										coo.Y1 = yV2[k - 1];
										coo.X2 = xV2[k];
										coo.Y2 = yV2[k];
										Sitr.push_back(coo);
									}
									else
									{
										xcm = (xV2[k - 1] + xV2[k]) / 2.0;
										ycm = (yV2[k - 1] + yV2[k]) / 2.0;
										Col = (unsigned int)floor(xcm + Var1);
										if (Col > nyMinusOne)
										{
											Col = Col - 1;
										}
										Lin = (unsigned int)floor(Var2 - (ycm + 1.0));
										if (Lin > nxMinusOne)
										{
											Lin = Lin - 1;
										}
										V2.push_back(Lin * ny + Col);
										coo.X1 = xV2[k - 1];
										coo.Y1 = yV2[k - 1];
										coo.X2 = xV2[k];
										coo.Y2 = yV2[k];
										Sitr.push_back(coo);
									}
								}
								else
								{
									xcm = (xV2[k - 1] + xV2[k]) / 2.0;
									ycm = (yV2[k - 1] + yV2[k]) / 2.0;
									Col = (unsigned int)floor(xcm + Var1);
									if (Col > nyMinusOne)
									{
										Col = Col - 1;
									}
									Lin = (unsigned int)floor(Var2 - ycm);
									if (Lin > nxMinusOne)
									{
										Lin = Lin - 1;
									}
									V2.push_back(Lin * ny + Col);
									coo.X1 = xV2[k - 1];
									coo.Y1 = yV2[k - 1];
									coo.X2 = xV2[k];
									coo.Y2 = yV2[k];
									Sitr.push_back(coo);
								}
							}
						}
					}
				}
				else
				{
					if (x1 < x3)
					{
						if ((y1 >= yLoLimit) && (y1 < yUpLimit))
						{
							if (setyU.find(y1) == setyU.end())
							{
								Lin = (unsigned int)floor(Var2 - y1);
								if (Lin > nxMinusOne)
								{
									Lin = Lin - 1;
								}
								for (k = 1; k <= ny; k++)
								{
									xcm = (xl[k - 1] + xl[k]) / 2.0;
									Col = (unsigned int)floor(xcm + Var1);
									if (Col > nyMinusOne)
									{
										Col = Col - 1;
									}
									V2.push_back(Lin * ny + Col);
									coo.X1 = xl[k - 1];
									coo.Y1 = y1;
									coo.X2 = xl[k];
									coo.Y2 = y1;
									Sitr.push_back(coo);
								}
							}
							else
							{
								Lin = (unsigned int)floor(Var2 - (y1 + 1.0));
								if (Lin > nxMinusOne)
								{
									Lin = Lin - 1;
								}
								for (k = 1; k <= ny; k++)
								{
									xcm = (xl[k - 1] + xl[k]) / 2.0;
									Col = (unsigned int)floor(xcm + Var1);
									if (Col > nyMinusOne)
									{
										Col = Col - 1;
									}
									V2.push_back(Lin * ny + Col);
									coo.X1 = xl[k - 1];
									coo.Y1 = y1;
									coo.X2 = xl[k];
									coo.Y2 = y1;
									Sitr.push_back(coo);
								}
							}
						}
					}
					else
					{
						if ((y1 > yLoLimit) && (y1 <= yUpLimit))
						{
							Lin = (unsigned int)floor(Var2 - y1);
							if (Lin > nxMinusOne)
							{
								Lin = Lin - 1;
							}
							for (k = 1; k <= ny; k++)
							{
								xcm = (xl[k - 1] + xl[k]) / 2.0;
								Col = (unsigned int)floor(xcm + Var1);
								if (Col > nyMinusOne)
								{
									Col = Col - 1;
								}
								V2.push_back(Lin * ny + Col);
								coo.X1 = xl[k - 1];
								coo.Y1 = y1;
								coo.X2 = xl[k];
								coo.Y2 = y1;
								Sitr.push_back(coo);
							}
						}
					}
				}
			}
			else
			{
				if (y1 < y3)
				{
					if ((x1 > xLoLimit) && (x1 <= xUpLimit))
					{
						if (setxL.find(x1) == setxL.end())
						{
							Col = (unsigned int)floor(x1 + Var1);
							if (Col > nyMinusOne)
							{
								Col = Col - 1;
							}
							for (k = 1; k <= nx; k++)
							{
								ycm = (yl[k - 1] + yl[k]) / 2.0;
								Lin = (unsigned int)floor(Var2 - ycm);
								if (Lin > nxMinusOne)
								{
									Lin = Lin - 1;
								}
								V2.push_back(Lin * ny + Col);
								coo.X1 = x1;
								coo.Y1 = yl[k - 1];
								coo.X2 = x1;
								coo.Y2 = yl[k];
								Sitr.push_back(coo);
							}
						}
						else
						{
							Col = (unsigned int)floor((x1 - 1.0) + Var1);
							if (Col > nyMinusOne)
							{
								Col = Col - 1;
							}
							for (k = 1; k <= nx; k++)
							{
								ycm = (yl[k - 1] + yl[k]) / 2.0;
								Lin = (unsigned int)floor(Var2 - ycm);
								if (Lin > nxMinusOne)
								{
									Lin = Lin - 1;
								}
								V2.push_back(Lin * ny + Col);
								coo.X1 = x1;
								coo.Y1 = yl[k - 1];
								coo.X2 = x1;
								coo.Y2 = yl[k];
								Sitr.push_back(coo);
							}
						}
					}
				}
				else
				{
					if ((x1 >= xLoLimit) && (x1 < xUpLimit))
					{
						Col = (unsigned int)floor(x1 + Var1);
						if (Col > nyMinusOne)
						{
							Col = Col - 1;
						}
						for (k = 1; k <= nx; k++)
						{
							ycm = (yl[k - 1] + yl[k]) / 2.0;
							Lin = (unsigned int)floor(Var2 - ycm);
							if (Lin > nxMinusOne)
							{
								Lin = Lin - 1;
							}
							V2.push_back(Lin * ny + Col);
							coo.X1 = x1;
							coo.Y1 = yl[k - 1];
							coo.X2 = x1;
							coo.Y2 = yl[k];
							Sitr.push_back(coo);
						}
					}
				}
			}
			Vp.clear();
			Sp.clear();
			Sx.clear();
			Sy.clear();

			SL.insert(V1.begin(), V1.end());
			SR.insert(V2.begin(), V2.end());

			ST.insert(V1.begin(), V1.end());
			ST.insert(V2.begin(), V2.end());

			for (STit = ST.begin(); STit != ST.end(); STit++)
			{
				V3.push_back(*STit);
			}

			sort(V3.begin(), V3.end());
			s1 = V3.size();

			for (i1 = 0; i1 < V3.size(); i1++)
			{
				Sitg[i1 * 3] = 0;
				for (j1 = 0; j1 < V1.size(); j1++)
				{
					if (V3[i1] == V1[j1])
					{
						Sitg[i1 * 3] = 1;
						Sitg[i1 * 3 + 1] = j1;
						break;
					}
				}
				for (j1 = 0; j1 < V2.size(); j1++)
				{
					if (V3[i1] == V2[j1])
					{
						if (Sitg[i1 * 3] == 1)
						{
							Sitg[i1 * 3] = 3;
						}
						else
							if (Sitg[i1 * 3] == 0)
							{
								Sitg[i1 * 3] = 2;
							}
						Sitg[i1 * 3 + 2] = j1;
						break;
					}
				}
			}

			unsigned int Fl;
			unsigned int Ll;

			for (i1 = 0; i1 < V3.size(); i1++)
			{
				C1[V3[i1] / ny].push_back(V3[i1]);
				C2[V3[i1] / ny].push_back(i1);
			}
			for (i1 = 0; i1 < nx; i1++)
			{
				if (C1[i1].size() >= 1)
				{
					Fl = i1;
					break;
				}
			}
			for (i1 = (nx - 1); i1 >= 0; i1--)
			{
				if (C1[i1].size() >= 1)
				{
					Ll = i1;
					break;
				}

				if (i1 == 0)
				{
					break;
				}
			}

			if (V3.size() >= 1)
			{
				if ((SL.size() > 0) && (SR.size() > 0))
				{
					if ((y3 >= y1) && (x3 > x1))
					{
						unsigned int W1;
						unsigned int W2;
						unsigned int W3;

						float W4;
						for (k1 = Fl; k1 <= Ll; k1++)
						{
							W1 = C1[k1].size();
							Z[aux1].count += W1;
							if (W1 >= 1)
							{
								ray1 = 0;
								ray2 = 0;
								for (i1 = 0; i1 < W1; i1++)
									if (Sitg[C2[k1][i1] * 3] == 1)
									{
										ray1 = 1;
									}
									else
										if (Sitg[C2[k1][i1] * 3] == 2)
										{
											ray2 = 1;
										}
										else
											if (Sitg[C2[k1][i1] * 3] == 3)
											{
												ray1 = 1;
												ray2 = 1;
											}
								if ((ray1 == 1) && (ray2 == 0))
								{
									Z[aux1].count += ny - (C1[k1][0] % ny) - W1;
									i1 = ny - (C1[k1][0] % ny) - W1;
									j1 = C1[k1][W1 - 1];
									if (i1 > 0)
									{
										W2 = j1 + 1;
										for (k2 = 0; k2 < i1; k2++)
										{
											V3.push_back(W2 + k2);
											Sitg[(V3.size() - 1) * 3] = 0;
										}
									}
								}
								else
									if ((ray1 == 0) && (ray2 == 1))
									{
										Z[aux1].count += (C1[k1][W1 - 1] % ny) + 1 - W1;
										i1 = (C1[k1][W1 - 1] % ny) + 1 - W1;
										j1 = C1[k1][0];
										if (i1 > 0)
										{
											W2 = j1 - 1;
											for (k2 = 0; k2 < i1; k2++)
											{
												V3.push_back(W2 - k2);
												Sitg[(V3.size() - 1) * 3] = 0;
											}
										}
									}
									else
										if ((ray1 == 1) && (ray2 == 1))
										{
											for (i1 = 0; i1 < W1; i1++)
											{
												if (i1 > 0)
													if ((C1[k1][i1] - C1[k1][i1 - 1]) > 1)
													{
														W2 = C1[k1][i1] - C1[k1][i1 - 1] - 1;
														Z[aux1].count += W2;
														W3 = C1[k1][i1 - 1] + 1;
														for (k2 = 0; k2 < W2; k2++)
														{
															V3.push_back(W3 + k2);
															Sitg[(V3.size() - 1) * 3] = 0;
														}
													}
											}
											if ((k1 > Fl) && (k1 < Ll))
											{
												W2 = (C1[k1][0] % ny);
												for (i1 = 0; i1 < W2; i1++)
												{
													if (((C1[k1][0] - i1 - 1 - ny) >= C1[k1 - 1][0]) && ((C1[k1][0] - i1 - 1 - ny) <= C1[k1 - 1][C1[k1 - 1].size() - 1]) && ((C1[k1][0] - i1 - 1 - ny) >= C1[k1 + 1][0]) && ((C1[k1][0] - i1 - 1 - ny) <= C1[k1 + 1][C1[k1 + 1].size() - 1]))
													{
														Z[aux1].count++;
														V3.push_back(C1[k1][0] - i1 - 1);
														Sitg[(V3.size() - 1) * 3] = 0;
													}
												}
												W2 = (ny - 1 - (C1[k1][C1[k1].size() - 1] % ny));
												for (i1 = 0; i1 < W2; i1++)
												{
													if (((C1[k1][W1 - 1] + i1 + 1 + ny) >= C1[k1 - 1][0]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) <= C1[k1 - 1][C1[k1 - 1].size() - 1]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) >= C1[k1 + 1][0]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) <= C1[k1 + 1][C1[k1 + 1].size() - 1]))
													{
														Z[aux1].count++;
														V3.push_back(C1[k1][W1 - 1] + i1 + 1);
														Sitg[(V3.size() - 1) * 3] = 0;
													}
												}
											}
										}
							}
							else
							{
								Z[aux1].count += ny;
								W2 = k1 * ny;
								for (i1 = 0; i1 < ny; i1++)
								{
									V3.push_back(W2 + i1);
									Sitg[(V3.size() - 1) * 3] = 0;
								}
							}
						}
						Z[aux1].index = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
						if (Z[aux1].index == NULL)
						{
							MessageBox(NULL, TEXT("problem -> Z[aux1].index.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
						Z[aux1].intersection = (float*)malloc(Z[aux1].count * sizeof(float));
						if (Z[aux1].intersection == NULL)
						{
							MessageBox(NULL, TEXT("problem -> Z[aux1].intersection.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
						k2 = 0;
						for (k1 = Fl; k1 <= Ll; k1++)
						{
							W1 = C1[k1].size();
							for (i1 = 0; i1 < W1; i1++)
							{
								Z[aux1].index[k2 + i1] = C1[k1][i1];
								Z[aux1].intersection[k2 + i1] = 0.0;
								if (Sitg[C2[k1][i1] * 3] == 1)
								{
									W2 = C2[k1][i1] * 3 + 1;
									X1 = Sitl[Sitg[W2]].X1;
									Y1 = Sitl[Sitg[W2]].Y1;
									X2 = Sitl[Sitg[W2]].X2;
									Y2 = Sitl[Sitg[W2]].Y2;

									W3 = (C1[k1][i1] % ny);
									xL = xl[W3];
									xR = xl[W3 + 1];
									W3 = nx - (C1[k1][i1] / ny);
									yU = yl[W3];
									yD = yl[W3 - 1];

									if (Y2 > Y1)
									{
										if (X2 <  X1)
										{
											W4 = abs(Y2 - Y1);
											Z[aux1].intersection[k2 + i1] = abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
										}
										else
											if (X2 >  X1)
											{
												W4 = abs(Y2 - Y1);
												Z[aux1].intersection[k2 + i1] = abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
											}
											else
												if (X2 == X1)
												{
													Z[aux1].intersection[k2 + i1] = abs(xR - X2);
												}
									}
									else
										if (Y1 > Y2)
										{
											if (X1 <  X2)
											{
												W4 = abs(Y1 - Y2);
												Z[i*nv + j].intersection[k2 + i1] = abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
											}
											else
												if (X1 >  X2)
												{
													W4 = abs(Y1 - Y2);
													Z[aux1].intersection[k2 + i1] = abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
												}
												else
													if (X1 == X2)
													{
														Z[aux1].intersection[k2 + i1] = abs(xR - X1);
													}
										}
								}
								else
									if (Sitg[C2[k1][i1] * 3] == 2)
									{
										W2 = C2[k1][i1] * 3 + 2;
										X1 = Sitr[Sitg[W2]].X1;
										Y1 = Sitr[Sitg[W2]].Y1;
										X2 = Sitr[Sitg[W2]].X2;
										Y2 = Sitr[Sitg[W2]].Y2;

										W3 = (C1[k1][i1] % ny);
										xL = xl[W3];
										xR = xl[W3 + 1];
										W3 = nx - (C1[k1][i1] / ny);
										yU = yl[W3];
										yD = yl[W3 - 1];

										if (Y2 >  Y1)
										{
											if (X2 >  X1)
											{
												W4 = abs(Y2 - Y1);
												Z[aux1].intersection[k2 + i1] = 1.0 - (abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
											}
											else
												if (X2 == X1)
												{
													Z[aux1].intersection[k2 + i1] = 1.0 - abs(xR - X2);
												}
										}
										else
											if (Y1 >  Y2)
											{
												if (X1 >  X2)
												{
													W4 = abs(Y1 - Y2);
													Z[aux1].intersection[k2 + i1] = 1.0 - (abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
												}
												else
													if (X1 == X2)
													{
														Z[aux1].intersection[k2 + i1] = 1.0 - abs(xR - X1);
													}
											}
											else
												if (Y1 == Y2)
												{
													Z[aux1].intersection[k2 + i1] = abs(yU - Y1);
												}
									}
									else
										if (Sitg[C2[k1][i1] * 3] == 3)
										{
											W2 = C2[k1][i1] * 3 + 1;
											X1 = Sitl[Sitg[W2]].X1;
											Y1 = Sitl[Sitg[W2]].Y1;
											X2 = Sitl[Sitg[W2]].X2;
											Y2 = Sitl[Sitg[W2]].Y2;

											W3 = (C1[k1][i1] % ny);
											xL = xl[W3];
											xR = xl[W3 + 1];
											W3 = nx - (C1[k1][i1] / ny);
											yU = yl[W3];
											yD = yl[W3 - 1];

											if (Y2 > Y1)
											{
												if (X2 <  X1)
												{
													W4 = abs(Y2 - Y1);
													Aux1 = abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
												}
												else
													if (X2 >  X1)
													{
														W4 = abs(Y2 - Y1);
														Aux1 = abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
													}
													else
														if (X2 == X1)
														{
															Aux1 = abs(xR - X2);
														}
											}
											else
												if (Y1 > Y2)
												{
													if (X1 <  X2)
													{
														W4 = abs(Y1 - Y2);
														Aux1 = abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
													}
													else
														if (X1 >  X2)
														{
															W4 = abs(Y1 - Y2);
															Aux1 = abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
														}
														else
															if (X1 == X2)
															{
																Aux1 = abs(xR - X1);
															}
												}

											W2 = C2[k1][i1] * 3 + 2;
											X1 = Sitr[Sitg[W2]].X1;
											Y1 = Sitr[Sitg[W2]].Y1;
											X2 = Sitr[Sitg[W2]].X2;
											Y2 = Sitr[Sitg[W2]].Y2;

											if (Y2 >  Y1)
											{
												if (X2 >  X1)
												{
													W4 = abs(Y2 - Y1);
													Aux2 = 1.0 - (abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
												}
												else
													if (X2 == X1)
													{
														Aux2 = 1.0 - abs(xR - X2);
													}
											}
											else
												if (Y1 >  Y2)
												{
													if (X1 >  X2)
													{
														W4 = abs(Y1 - Y2);
														Aux2 = 1.0 - (abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
													}
													else
														if (X1 == X2)
														{
															Aux2 = 1.0 - abs(xR - X1);
														}
												}
												else
													if (Y1 == Y2)
													{
														Aux2 = abs(yU - Y1);
													}

											Z[aux1].intersection[k2 + i1] = Aux2 - (1.0 - Aux1);
										}
								Z[aux1].sumofintersections += Z[aux1].intersection[k2 + i1];
							}
							k2 += C1[k1].size();
						}
						W2 = V3.size() - s1;
						W3 = Z[aux1].count - (V3.size() - s1);
						for (k1 = 0; k1 < W2; k1++)
						{
							Z[aux1].index[W3 + k1] = V3[s1 + k1];
							Z[aux1].intersection[W3 + k1] = 1.0;
							Z[aux1].sumofintersections += 1.0;
						}

						unsigned int *auxvect1;
						float *auxvect2;

						auxvect1 = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
						if (auxvect1 == NULL)
						{
							MessageBox(NULL, TEXT("problem -> auxvect1.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
						auxvect2 = (float*)malloc(Z[aux1].count * sizeof(float));
						if (auxvect2 == NULL)
						{
							MessageBox(NULL, TEXT("problem -> auxvect2.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}

						unsigned int K = 0;
						W2 = Z[aux1].count;
						for (k1 = 0; k1 < W2; k1++)
							if (Z[aux1].intersection[k1] > 0.0)
							{
								auxvect1[K] = Z[aux1].index[k1];
								auxvect2[K] = Z[aux1].intersection[k1];
								pmO[Z[aux1].index[k1]] += Z[aux1].intersection[k1];

								if (SMO == true)
								{
									S[aux1] += Z[aux1].intersection[k1] * Oi1[Z[aux1].index[k1]];
								}

								K++;
							}
							else
							{
								Z[aux1].sumofintersections -= Z[aux1].intersection[k1];
							}
						Z[aux1].count = K;

						free(Z[aux1].index);
						free(Z[aux1].intersection);
						Z[aux1].index = auxvect1;
						Z[aux1].intersection = auxvect2;
					}
					else
						if ((y3 > y1) && (x3 <= x1))
						{
							unsigned int W1;
							unsigned int W2;
							unsigned int W3;

							float W4;
							for (k1 = Fl; k1 <= Ll; k1++)
							{
								W1 = C1[k1].size();
								Z[aux1].count += W1;
								if (W1 >= 1)
								{
									ray1 = 0;
									ray2 = 0;
									for (i1 = 0; i1 < W1; i1++)
										if (Sitg[C2[k1][i1] * 3] == 1)
										{
											ray1 = 1;
										}
										else
											if (Sitg[C2[k1][i1] * 3] == 2)
											{
												ray2 = 1;
											}
											else
												if (Sitg[C2[k1][i1] * 3] == 3)
												{
													ray1 = 1;
													ray2 = 1;
												}
									if ((ray1 == 1) && (ray2 == 0))
									{
										if (y2 >= y1)
										{
											Z[aux1].count += ny - (C1[k1][0] % ny) - W1;
											i1 = ny - (C1[k1][0] % ny) - W1;
											j1 = C1[k1][W1 - 1];
											if (i1 > 0)
											{
												W2 = j1 + 1;
												for (k2 = 0; k2 < i1; k2++)
												{
													V3.push_back(W2 + k2);
													Sitg[(V3.size() - 1) * 3] = 0;
												}
											}
										}
										else
											if (y2 < y1)
											{
												Z[aux1].count += (C1[k1][W1 - 1] % ny) + 1 - W1;
												i1 = (C1[k1][W1 - 1] % ny) + 1 - W1;
												j1 = C1[k1][0] - 1;
												if (i1 > 0)
												{
													for (k2 = 0; k2 < i1; k2++)
													{
														V3.push_back(j1 - k2);
														Sitg[(V3.size() - 1) * 3] = 0;
													}
												}
											}
									}
									else
										if ((ray1 == 0) && (ray2 == 1))
										{
											Z[aux1].count += (C1[k1][W1 - 1] % ny) + 1 - W1;
											i1 = (C1[k1][W1 - 1] % ny) + 1 - W1;
											j1 = C1[k1][0] - 1;
											if (i1 > 0)
											{
												for (k2 = 0; k2 < i1; k2++)
												{
													V3.push_back(j1 - k2);
													Sitg[(V3.size() - 1) * 3] = 0;
												}
											}
										}
										else
											if ((ray1 == 1) && (ray2 == 1))
											{
												for (i1 = 0; i1 < W1; i1++)
												{
													if (i1 > 0)
														if ((C1[k1][i1] - C1[k1][i1 - 1]) > 1)
														{
															W2 = C1[k1][i1] - C1[k1][i1 - 1] - 1;
															Z[aux1].count += W2;
															W3 = C1[k1][i1 - 1] + 1;
															for (k2 = 0; k2 < W2; k2++)
															{
																V3.push_back(W3 + k2);
																Sitg[(V3.size() - 1) * 3] = 0;
															}
														}
												}
												if ((k1 > Fl) && (k1 < Ll))
												{
													W2 = (C1[k1][0] % ny);
													for (i1 = 0; i1 < W2; i1++)
													{
														if (((C1[k1][0] - i1 - 1 - ny) >= C1[k1 - 1][0]) && ((C1[k1][0] - i1 - 1 - ny) <= C1[k1 - 1][C1[k1 - 1].size() - 1]) && ((C1[k1][0] - i1 - 1 + ny) >= C1[k1 + 1][0]) && ((C1[k1][0] - i1 - 1 + ny) <= C1[k1 + 1][C1[k1 + 1].size() - 1]))
														{
															Z[aux1].count++;
															V3.push_back(C1[k1][0] - i1 - 1);
															Sitg[(V3.size() - 1) * 3] = 0;
														}
													}
													W2 = ny - 1 - (C1[k1][W1 - 1] % ny);
													W3 = C1[k1][W1 - 1] + 1;
													for (i1 = 0; i1 < W2; i1++)
													{
														if (((C1[k1][W1 - 1] + i1 + 1 - ny) >= C1[k1 - 1][0]) && ((C1[k1][W1 - 1] + i1 + 1 - ny) <= C1[k1 - 1][C1[k1 - 1].size() - 1]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) >= C1[k1 + 1][0]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) <= C1[k1 + 1][C1[k1 + 1].size() - 1]))
														{
															Z[aux1].count++;
															V3.push_back(W3 + i1);
															Sitg[(V3.size() - 1) * 3] = 0;
														}
													}
												}
											}
								}
								else
								{
									Z[aux1].count += ny;
									W2 = k1 * ny;
									for (i1 = 0; i1 < ny; i1++)
									{
										V3.push_back(W2 + i1);
										Sitg[(V3.size() - 1) * 3] = 0;
									}
								}
							}
							Z[aux1].index = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
							if (Z[aux1].index == NULL)
							{
								MessageBox(NULL, TEXT("problem -> Z[aux1].index.."), TEXT("!"), MB_OK);
								Sleep(3000);
								exit(EXIT_FAILURE);
							}
							Z[aux1].intersection = (float*)malloc(Z[aux1].count * sizeof(float));
							if (Z[aux1].intersection == NULL)
							{
								MessageBox(NULL, TEXT("problem -> Z[aux1].intersection.."), TEXT("!"), MB_OK);
								Sleep(3000);
								exit(EXIT_FAILURE);
							}
							k2 = 0;
							for (k1 = Fl; k1 <= Ll; k1++)
							{
								W1 = C1[k1].size();
								for (i1 = 0; i1 < W1; i1++)
								{
									Z[aux1].index[k2 + i1] = C1[k1][i1];
									Z[aux1].intersection[k2 + i1] = 0.0;
									if (Sitg[C2[k1][i1] * 3] == 1)
									{
										W2 = C2[k1][i1] * 3 + 1;
										X1 = Sitl[Sitg[W2]].X1;
										Y1 = Sitl[Sitg[W2]].Y1;
										X2 = Sitl[Sitg[W2]].X2;
										Y2 = Sitl[Sitg[W2]].Y2;

										W3 = (C1[k1][i1] % ny);
										xL = xl[W3];
										xR = xl[W3 + 1];
										W3 = nx - (C1[k1][i1] / ny);
										yU = yl[W3];
										yD = yl[W3 - 1];

										if (y2 >= y1)
										{
											if (Y2 >  Y1)
											{
												if (X2 < X1)
												{
													W4 = abs(Y2 - Y1);
													Z[aux1].intersection[k2 + i1] = abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
												}
											}
											else
												if (Y1 >  Y2)
												{
													if (X1 < X2)
													{
														W4 = abs(Y1 - Y2);
														Z[aux1].intersection[k2 + i1] = abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
													}
												}
												else
													if (Y1 == Y2)
													{
														Z[aux1].intersection[k2 + i1] = abs(yU - Y1);
													}
										}
										else
											if (y2 <  y1)
											{
												if (Y2 >  Y1)
												{
													if (X2 > X1)
													{
														W4 = abs(Y2 - Y1);
														Z[aux1].intersection[k2 + i1] = 1.0 - (abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
													}
												}
												else
													if (Y1 >  Y2)
													{
														if (X1 > X2)
														{
															W4 = abs(Y1 - Y2);
															Z[aux1].intersection[k2 + i1] = 1.0 - (abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
														}
													}
													else
														if (Y1 == Y2)
														{
															Z[aux1].intersection[k2 + i1] = abs(yU - Y1);
														}
											}
									}
									else
										if (Sitg[C2[k1][i1] * 3] == 2)
										{
											W2 = C2[k1][i1] * 3 + 2;
											X1 = Sitr[Sitg[W2]].X1;
											Y1 = Sitr[Sitg[W2]].Y1;
											X2 = Sitr[Sitg[W2]].X2;
											Y2 = Sitr[Sitg[W2]].Y2;

											W3 = (C1[k1][i1] % ny);
											xL = xl[W3];
											xR = xl[W3 + 1];
											W3 = nx - (C1[k1][i1] / ny);
											yU = yl[W3];
											yD = yl[W3 - 1];

											if (Y2 >  Y1)
											{
												if (X2 <  X1)
												{
													W4 = abs(Y2 - Y1);
													Z[aux1].intersection[k2 + i1] = 1.0 - (abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
												}
												else
													if (X2 == X1)
													{
														Z[aux1].intersection[k2 + i1] = 1.0 - abs(xR - X2);
													}
											}
											else
												if (Y1 >  Y2)
												{
													if (X1 <  X2)
													{
														W4 = abs(Y1 - Y2);
														Z[aux1].intersection[k2 + i1] = 1.0 - (abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
													}
													else
														if (X1 == X2)
														{
															Z[aux1].intersection[k2 + i1] = 1.0 - abs(xR - X1);
														}
												}
												else
													if (Y1 == Y2)
													{
														Z[aux1].intersection[k2 + i1] = abs(Y1 - yD);
													}
										}
										else
											if (Sitg[C2[k1][i1] * 3] == 3)
											{
												W2 = C2[k1][i1] * 3 + 1;
												X1 = Sitl[Sitg[W2]].X1;
												Y1 = Sitl[Sitg[W2]].Y1;
												X2 = Sitl[Sitg[W2]].X2;
												Y2 = Sitl[Sitg[W2]].Y2;

												W3 = C1[k1][i1] % ny;
												xL = xl[W3];
												xR = xl[W3 + 1];
												W3 = nx - (C1[k1][i1] / ny);
												yU = yl[W3];
												yD = yl[W3 - 1];

												if (y2 >= y1)
												{
													if (Y2 >  Y1)
													{
														if (X2 < X1)
														{
															W4 = abs(Y2 - Y1);
															Aux1 = abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
														}
													}
													else
														if (Y1 >  Y2)
														{
															if (X1 < X2)
															{
																W4 = abs(Y1 - Y2);
																Aux1 = abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
															}
														}
														else
															if (Y1 == Y2)
															{
																Aux1 = abs(yU - Y1);
															}
												}
												else
													if (y2 <  y1)
													{
														if (Y2 >  Y1)
														{
															if (X2 > X1)
															{
																W4 = abs(Y2 - Y1);
																Aux1 = 1.0 - (abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
															}
														}
														else
															if (Y1 >  Y2)
															{
																if (X1 > X2)
																{
																	W4 = abs(Y1 - Y2);
																	Aux1 = 1.0 - (abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
																}
															}
															else
																if (Y1 == Y2)
																{
																	Aux1 = abs(yU - Y1);
																}
													}

												W2 = C2[k1][i1] * 3 + 2;
												X1 = Sitr[Sitg[W2]].X1;
												Y1 = Sitr[Sitg[W2]].Y1;
												X2 = Sitr[Sitg[W2]].X2;
												Y2 = Sitr[Sitg[W2]].Y2;

												if (Y2 >  Y1)
												{
													if (X2 <  X1)
													{
														W4 = abs(Y2 - Y1);
														Aux2 = 1.0 - (abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
													}
													else
														if (X2 == X1)
														{
															Aux2 = 1.0 - abs(xR - X2);
														}
												}
												else
													if (Y1 >  Y2)
													{
														if (X1 <  X2)
														{
															W4 = abs(Y1 - Y2);
															Aux2 = 1.0 - (abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
														}
														else
															if (X1 == X2)
															{
																Aux2 = 1.0 - abs(xR - X1);
															}
													}
													else
														if (Y1 == Y2)
														{
															Aux2 = abs(Y1 - yD);
														}

												Z[aux1].intersection[k2 + i1] = Aux2 - (1.0 - Aux1);
											}
									Z[aux1].sumofintersections += Z[aux1].intersection[k2 + i1];
								}
								k2 += C1[k1].size();
							}
							W2 = V3.size() - s1;
							W3 = Z[aux1].count - (V3.size() - s1);
							for (k1 = 0; k1 < W2; k1++)
							{
								Z[aux1].index[W3 + k1] = V3[s1 + k1];
								Z[aux1].intersection[W3 + k1] = 1.0;
								Z[aux1].sumofintersections += 1.0;
							}

							unsigned int *auxvect1;
							float *auxvect2;

							auxvect1 = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
							if (auxvect1 == NULL)
							{
								MessageBox(NULL, TEXT("problem -> auxvect1.."), TEXT("!"), MB_OK);
								Sleep(3000);
								exit(EXIT_FAILURE);
							}
							auxvect2 = (float*)malloc(Z[aux1].count * sizeof(float));
							if (auxvect2 == NULL)
							{
								MessageBox(NULL, TEXT("problem -> auxvect2.."), TEXT("!"), MB_OK);
								Sleep(3000);
								exit(EXIT_FAILURE);
							}

							unsigned int K = 0;
							W2 = Z[aux1].count;
							for (k1 = 0; k1 < W2; k1++)
								if (Z[aux1].intersection[k1] > 0.0)
								{
									W3 = Z[aux1].index[k1];
									auxvect1[K] = W3;
									auxvect2[K] = Z[aux1].intersection[k1];
									pmO[W3] += Z[aux1].intersection[k1];

									if (SMO == true)
									{
										S[aux1] += Z[aux1].intersection[k1] * Oi1[W3];
									}

									K++;
								}
								else
								{
									Z[aux1].sumofintersections -= Z[aux1].intersection[k1];
								}
							Z[aux1].count = K;
							free(Z[aux1].index);
							free(Z[aux1].intersection);
							Z[aux1].index = auxvect1;
							Z[aux1].intersection = auxvect2;
						}
						else
							if ((y3 <= y1) && (x3 < x1))
							{
								unsigned int W1;
								unsigned int W2;
								unsigned int W3;

								float W4;
								for (k1 = Fl; k1 <= Ll; k1++)
								{
									W1 = C1[k1].size();
									Z[aux1].count += W1;
									if (W1 >= 1)
									{
										ray1 = 0;
										ray2 = 0;
										for (i1 = 0; i1 < W1; i1++)
											if (Sitg[C2[k1][i1] * 3] == 1)
											{
												ray1 = 1;
											}
											else
												if (Sitg[C2[k1][i1] * 3] == 2)
												{
													ray2 = 1;
												}
												else
													if (Sitg[C2[k1][i1] * 3] == 3)
													{
														ray1 = 1;
														ray2 = 1;
													}
										if ((ray1 == 1) && (ray2 == 0))
										{
											Z[aux1].count += (C1[k1][W1 - 1] % ny) + 1 - W1;
											i1 = (C1[k1][W1 - 1] % ny) + 1 - W1;
											j1 = C1[k1][0] - 1;
											if (i1 > 0)
											{
												for (k2 = 0; k2 < i1; k2++)
												{
													V3.push_back(j1 - k2);
													Sitg[(V3.size() - 1) * 3] = 0;
												}
											}
										}
										else
											if ((ray1 == 0) && (ray2 == 1))
											{
												Z[aux1].count += ny - (C1[k1][0] % ny) - W1;
												i1 = ny - (C1[k1][0] % ny) - W1;
												j1 = C1[k1][W1 - 1] + 1;
												if (i1 > 0)
												{
													for (k2 = 0; k2 < i1; k2++)
													{
														V3.push_back(j1 + k2);
														Sitg[(V3.size() - 1) * 3] = 0;
													}
												}
											}
											else
												if ((ray1 == 1) && (ray2 == 1))
												{
													for (i1 = 0; i1 < W1; i1++)
													{
														if (i1 > 0)
															if ((C1[k1][i1] - C1[k1][i1 - 1]) > 1)
															{
																W2 = C1[k1][i1] - C1[k1][i1 - 1] - 1;
																Z[aux1].count += W2;
																W3 = C1[k1][i1 - 1] + 1;
																for (k2 = 0; k2 < W2; k2++)
																{
																	V3.push_back(W3 + k2);
																	Sitg[(V3.size() - 1) * 3] = 0;
																}
															}
													}
													if ((k1 > Fl) && (k1 < Ll))
													{
														W2 = (C1[k1][0] % ny);
														W3 = C1[k1][0] - 1;
														for (i1 = 0; i1 < W2; i1++)
														{
															if (((C1[k1][0] - i1 - 1 - ny) >= C1[k1 - 1][0]) && ((C1[k1][0] - i1 - 1 - ny) <= C1[k1 - 1][C1[k1 - 1].size() - 1]) && ((C1[k1][0] - i1 - 1 - ny) >= C1[k1 + 1][0]) && ((C1[k1][0] - i1 - 1 - ny) <= C1[k1 + 1][C1[k1 + 1].size() - 1]))
															{
																Z[aux1].count++;
																V3.push_back(W3 - i1);
																Sitg[(V3.size() - 1) * 3] = 0;
															}
														}
														W2 = ny - 1 - (C1[k1][W1 - 1] % ny);
														W3 = C1[k1][W1 - 1] + 1;
														for (i1 = 0; i1 < W2; i1++)
														{
															if (((C1[k1][W1 - 1] + i1 + 1 + ny) >= C1[k1 - 1][0]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) <= C1[k1 - 1][C1[k1 - 1].size() - 1]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) >= C1[k1 + 1][0]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) <= C1[k1 + 1][C1[k1 + 1].size() - 1]))
															{
																Z[aux1].count++;
																V3.push_back(W3 + i1);
																Sitg[(V3.size() - 1) * 3] = 0;
															}
														}
													}
												}
									}
									else
									{
										Z[aux1].count += ny;
										W2 = k1 * ny;
										for (i1 = 0; i1 < ny; i1++)
										{
											V3.push_back(W2 + i1);
											Sitg[(V3.size() - 1) * 3] = 0;
										}
									}
								}
								Z[aux1].index = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
								if (Z[aux1].index == NULL)
								{
									MessageBox(NULL, TEXT("problem -> Z[aux1].index.."), TEXT("!"), MB_OK);
									Sleep(3000);
									exit(EXIT_FAILURE);
								}
								Z[aux1].intersection = (float*)malloc(Z[aux1].count * sizeof(float));
								if (Z[aux1].intersection == NULL)
								{
									MessageBox(NULL, TEXT("problem -> Z[aux1].intersection.."), TEXT("!"), MB_OK);
									Sleep(3000);
									exit(EXIT_FAILURE);
								}
								k2 = 0;
								for (k1 = Fl; k1 <= Ll; k1++)
								{
									W1 = C1[k1].size();
									for (i1 = 0; i1 < W1; i1++)
									{
										Z[aux1].index[k2 + i1] = C1[k1][i1];
										Z[aux1].intersection[k2 + i1] = 0.0;
										if (Sitg[C2[k1][i1] * 3] == 1)
										{
											W2 = C2[k1][i1] * 3 + 1;
											X1 = Sitl[Sitg[W2]].X1;
											Y1 = Sitl[Sitg[W2]].Y1;
											X2 = Sitl[Sitg[W2]].X2;
											Y2 = Sitl[Sitg[W2]].Y2;

											W3 = (C1[k1][i1] % ny);
											xL = xl[W3];
											xR = xl[W3 + 1];
											W3 = nx - (C1[k1][i1] / ny);
											yU = yl[W3];
											yD = yl[W3 - 1];

											if (Y2 > Y1)
											{
												if (X2 <  X1)
												{
													W4 = abs(Y2 - Y1);
													Z[aux1].intersection[k2 + i1] = 1.0 - (abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
												}
												else
													if (X2 >  X1)
													{
														W4 = abs(Y2 - Y1);
														Z[aux1].intersection[k2 + i1] = 1.0 - (abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
													}
													else
														if (X2 == X1)
														{
															Z[aux1].intersection[k2 + i1] = 1.0 - abs(xR - X2);
														}
											}
											else
												if (Y1 > Y2)
												{
													if (X1 <  X2)
													{
														W4 = abs(Y1 - Y2);
														Z[aux1].intersection[k2 + i1] = 1.0 - (abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
													}
													else
														if (X1 >  X2)
														{
															W4 = abs(Y1 - Y2);
															Z[aux1].intersection[k2 + i1] = 1.0 - (abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
														}
														else
															if (X1 == X2)
															{
																Z[aux1].intersection[k2 + i1] = 1.0 - abs(xR - X1);
															}
												}
										}
										else
											if (Sitg[C2[k1][i1] * 3] == 2)
											{
												W2 = C2[k1][i1] * 3 + 2;
												X1 = Sitr[Sitg[W2]].X1;
												Y1 = Sitr[Sitg[W2]].Y1;
												X2 = Sitr[Sitg[W2]].X2;
												Y2 = Sitr[Sitg[W2]].Y2;

												W3 = (C1[k1][i1] % ny);
												xL = xl[W3];
												xR = xl[W3 + 1];
												W3 = nx - (C1[k1][i1] / ny);
												yU = yl[W3];
												yD = yl[W3 - 1];

												if (Y2 >  Y1)
												{
													if (X2 >  X1)
													{
														W4 = abs(Y2 - Y1);
														Z[aux1].intersection[k2 + i1] = abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
													}
													else
														if (X2 == X1)
														{
															Z[aux1].intersection[k2 + i1] = abs(xR - X2);
														}
												}
												else
													if (Y1 >  Y2)
													{
														if (X1 >  X2)
														{
															W4 = abs(Y1 - Y2);
															Z[aux1].intersection[k2 + i1] = abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
														}
														else
															if (X1 == X2)
															{
																Z[aux1].intersection[k2 + i1] = abs(xR - X1);
															}
													}
													else
														if (Y1 == Y2)
														{
															Z[aux1].intersection[k2 + i1] = abs(Y1 - yD);
														}
											}
											else
												if (Sitg[C2[k1][i1] * 3] == 3)
												{
													W2 = C2[k1][i1] * 3 + 1;
													X1 = Sitl[Sitg[W2]].X1;
													Y1 = Sitl[Sitg[W2]].Y1;
													X2 = Sitl[Sitg[W2]].X2;
													Y2 = Sitl[Sitg[W2]].Y2;

													W3 = (C1[k1][i1] % ny);
													xL = xl[W3];
													xR = xl[W3 + 1];
													W3 = nx - (C1[k1][i1] / ny);
													yU = yl[W3];
													yD = yl[W3 - 1];

													if (Y2 > Y1)
													{
														if (X2 <  X1)
														{
															W4 = abs(Y2 - Y1);
															Aux1 = 1.0 - (abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
														}
														else
															if (X2 >  X1)
															{
																W4 = abs(Y2 - Y1);
																Aux1 = 1.0 - (abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
															}
															else
																if (X2 == X1)
																{
																	Aux1 = 1.0 - abs(xR - X2);
																}
													}
													else
														if (Y1 > Y2)
														{
															if (X1 <  X2)
															{
																W4 = abs(Y1 - Y2);
																Aux1 = 1.0 - (abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
															}
															else
																if (X1 >  X2)
																{
																	W4 = abs(Y1 - Y2);
																	Aux1 = 1.0 - (abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
																}
																else
																	if (X1 == X2)
																	{
																		Aux1 = 1.0 - abs(xR - X1);
																	}
														}

													W2 = C2[k1][i1] * 3 + 2;
													X1 = Sitr[Sitg[W2]].X1;
													Y1 = Sitr[Sitg[W2]].Y1;
													X2 = Sitr[Sitg[W2]].X2;
													Y2 = Sitr[Sitg[W2]].Y2;

													if (Y2 >  Y1)
													{
														if (X2 >  X1)
														{
															W4 = abs(Y2 - Y1);
															Aux2 = abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
														}
														else
															if (X2 == X1)
															{
																Aux2 = abs(xR - X2);
															}
													}
													else
														if (Y1 >  Y2)
														{
															if (X1 >  X2)
															{
																W4 = abs(Y1 - Y2);
																Aux2 = abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
															}
															else
																if (X1 == X2)
																{
																	Aux2 = abs(xR - X1);
																}
														}
														else
															if (Y1 == Y2)
															{
																Aux2 = abs(Y1 - yD);
															}

													Z[aux1].intersection[k2 + i1] = Aux2 - (1.0 - Aux1);
												}
										Z[aux1].sumofintersections += Z[aux1].intersection[k2 + i1];
									}
									k2 += W1;
								}
								W2 = V3.size() - s1;
								W3 = Z[aux1].count - (V3.size() - s1);
								for (k1 = 0; k1 < W2; k1++)
								{
									Z[aux1].index[W3 + k1] = V3[s1 + k1];
									Z[aux1].intersection[W3 + k1] = 1.0;
									Z[aux1].sumofintersections += 1.0;
								}

								unsigned int *auxvect1;
								float *auxvect2;

								auxvect1 = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
								if (auxvect1 == NULL)
								{
									MessageBox(NULL, TEXT("problem -> auxvect1.."), TEXT("!"), MB_OK);
									Sleep(3000);
									exit(EXIT_FAILURE);
								}
								auxvect2 = (float*)malloc(Z[aux1].count * sizeof(float));
								if (auxvect2 == NULL)
								{
									MessageBox(NULL, TEXT("problem -> auxvect2.."), TEXT("!"), MB_OK);
									Sleep(3000);
									exit(EXIT_FAILURE);
								}

								unsigned int K = 0;
								W2 = Z[aux1].count;
								for (k1 = 0; k1 < W2; k1++)
									if (Z[aux1].intersection[k1] > 0.0)
									{
										W3 = Z[aux1].index[k1];
										auxvect1[K] = W3;
										auxvect2[K] = Z[aux1].intersection[k1];
										pmO[W3] += Z[aux1].intersection[k1];

										if (SMO == true)
										{
											S[aux1] += Z[aux1].intersection[k1] * Oi1[W3];
										}

										K++;
									}
									else
									{
										Z[aux1].sumofintersections -= Z[aux1].intersection[k1];
									}
								Z[aux1].count = K;
								free(Z[aux1].index);
								free(Z[aux1].intersection);
								Z[aux1].index = auxvect1;
								Z[aux1].intersection = auxvect2;
							}
							else
								if ((y3 < y1) && (x3 >= x1))
								{
									unsigned int W1;
									unsigned int W2;
									unsigned int W3;

									float W4;
									for (k1 = Fl; k1 <= Ll; k1++)
									{
										W1 = C1[k1].size();
										Z[aux1].count += W1;
										if (W1 >= 1)
										{
											ray1 = 0;
											ray2 = 0;
											for (i1 = 0; i1 < W1; i1++)
												if (Sitg[C2[k1][i1] * 3] == 1)
												{
													ray1 = 1;
												}
												else
													if (Sitg[C2[k1][i1] * 3] == 2)
													{
														ray2 = 1;
													}
													else
														if (Sitg[C2[k1][i1] * 3] == 3)
														{
															ray1 = 1;
															ray2 = 1;
														}
											if ((ray1 == 1) && (ray2 == 0))
											{
												if (y2 >  y1)
												{
													Z[aux1].count += ny - (C1[k1][0] % ny) - W1;
													i1 = ny - (C1[k1][0] % ny) - W1;
													j1 = C1[k1][W1 - 1] + 1;
													if (i1 > 0)
													{
														for (k2 = 0; k2 < i1; k2++)
														{
															V3.push_back(j1 + k2);
															Sitg[(V3.size() - 1) * 3] = 0;
														}
													}
												}
												else
													if (y2 <= y1)
													{
														Z[aux1].count += (C1[k1][W1 - 1] % ny) + 1 - W1;
														i1 = (C1[k1][W1 - 1] % ny) + 1 - W1;
														j1 = C1[k1][0] - 1;
														if (i1 > 0)
														{
															for (k2 = 0; k2 < i1; k2++)
															{
																V3.push_back(j1 - k2);
																Sitg[(V3.size() - 1) * 3] = 0;
															}
														}
													}
											}
											else
												if ((ray1 == 0) && (ray2 == 1))
												{
													Z[aux1].count += ny - (C1[k1][0] % ny) - W1;
													i1 = ny - (C1[k1][0] % ny) - W1;
													j1 = C1[k1][W1 - 1] + 1;
													if (i1 > 0)
													{
														for (k2 = 0; k2 < i1; k2++)
														{
															V3.push_back(j1 + k2);
															Sitg[(V3.size() - 1) * 3] = 0;
														}
													}
												}
												else
													if ((ray1 == 1) && (ray2 == 1))
													{
														for (i1 = 0; i1 < W1; i1++)
														{
															if (i1 > 0)
																if ((C1[k1][i1] - C1[k1][i1 - 1]) > 1)
																{
																	W2 = C1[k1][i1] - C1[k1][i1 - 1] - 1;
																	Z[aux1].count += W2;
																	W3 = C1[k1][i1 - 1] + 1;
																	for (k2 = 0; k2 < W2; k2++)
																	{
																		V3.push_back(W3 + k2);
																		Sitg[(V3.size() - 1) * 3] = 0;
																	}
																}
														}
														if ((k1 > Fl) && (k1 < Ll))
														{
															W2 = (C1[k1][0] % ny);
															W3 = C1[k1][0] - 1;
															for (i1 = 0; i1 < W2; i1++)
															{
																if (((C1[k1][0] - i1 - 1 - ny) >= C1[k1 - 1][0]) && ((C1[k1][0] - i1 - 1 - ny) <= C1[k1 - 1][C1[k1 - 1].size() - 1]) && ((C1[k1][0] - i1 - 1 - ny) >= C1[k1 + 1][0]) && ((C1[k1][0] - i1 - 1 - ny) <= C1[k1 + 1][C1[k1 + 1].size() - 1]))
																{
																	Z[aux1].count++;
																	V3.push_back(W3 - i1);
																	Sitg[(V3.size() - 1) * 3] = 0;
																}
															}
															W2 = ny - 1 - (C1[k1][W1 - 1] % ny);
															for (i1 = 0; i1 < W2; i1++)
															{
																if (((C1[k1][W1 - 1] + i1 + 1 + ny) >= C1[k1 - 1][0]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) <= C1[k1 - 1][C1[k1 - 1].size() - 1]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) >= C1[k1 + 1][0]) && ((C1[k1][W1 - 1] + i1 + 1 + ny) <= C1[k1 + 1][C1[k1 + 1].size() - 1]))
																{
																	Z[aux1].count++;
																	V3.push_back(C1[k1][W1 - 1] + i1 + 1);
																	Sitg[(V3.size() - 1) * 3] = 0;
																}
															}
														}
													}
										}
										else
										{
											Z[aux1].count += ny;
											W2 = k1 * ny;
											for (i1 = 0; i1 < ny; i1++)
											{
												V3.push_back(W2 + i1);
												Sitg[(V3.size() - 1) * 3] = 0;
											}
										}
									}
									Z[aux1].index = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
									if (Z[aux1].index == NULL)
									{
										MessageBox(NULL, TEXT("problem -> Z[aux1].index.."), TEXT("!"), MB_OK);
										Sleep(3000);
										exit(EXIT_FAILURE);
									}
									Z[aux1].intersection = (float*)malloc(Z[aux1].count * sizeof(float));
									if (Z[aux1].intersection == NULL)
									{
										MessageBox(NULL, TEXT("problem -> Z[aux1].intersection.."), TEXT("!"), MB_OK);
										Sleep(3000);
										exit(EXIT_FAILURE);
									}
									k2 = 0;
									for (k1 = Fl; k1 <= Ll; k1++)
									{
										W1 = C1[k1].size();
										for (i1 = 0; i1 < W1; i1++)
										{
											Z[aux1].index[k2 + i1] = C1[k1][i1];
											Z[aux1].intersection[k2 + i1] = 0.0;
											if (Sitg[C2[k1][i1] * 3] == 1)
											{
												W2 = C2[k1][i1] * 3 + 1;
												X1 = Sitl[Sitg[W2]].X1;
												Y1 = Sitl[Sitg[W2]].Y1;
												X2 = Sitl[Sitg[W2]].X2;
												Y2 = Sitl[Sitg[W2]].Y2;

												W3 = (C1[k1][i1] % ny);
												xL = xl[W3];
												xR = xl[W3 + 1];
												W3 = nx - (C1[k1][i1] / ny);
												yU = yl[W3];
												yD = yl[W3 - 1];

												if (y2 >  y1)
												{
													if (Y2 >  Y1)
													{
														if (X2 > X1)
														{
															W4 = abs(Y2 - Y1);
															Z[aux1].intersection[k2 + i1] = abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
														}
													}
													else
														if (Y1 >  Y2)
														{
															if (X1 > X2)
															{
																W4 = abs(Y1 - Y2);
																Z[aux1].intersection[k2 + i1] = abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
															}
														}
														else
															if (Y1 == Y2)
															{
																Z[aux1].intersection[k2 + i1] = abs(Y1 - yD);
															}
												}
												else
													if (y2 <= y1)
													{
														if (Y2 >  Y1)
														{
															if (X2 < X1)
															{
																W4 = abs(Y2 - Y1);
																Z[aux1].intersection[k2 + i1] = 1.0 - (abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
															}
														}
														else
															if (Y1 >  Y2)
															{
																if (X1 < X2)
																{
																	W4 = abs(Y1 - Y2);
																	Z[aux1].intersection[k2 + i1] = 1.0 - (abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
																}
															}
															else
																if (Y1 == Y2)
																{
																	Z[aux1].intersection[k2 + i1] = abs(Y1 - yD);
																}
													}
											}
											else
												if (Sitg[C2[k1][i1] * 3] == 2)
												{
													W2 = C2[k1][i1] * 3 + 2;
													X1 = Sitr[Sitg[W2]].X1;
													Y1 = Sitr[Sitg[W2]].Y1;
													X2 = Sitr[Sitg[W2]].X2;
													Y2 = Sitr[Sitg[W2]].Y2;

													W3 = (C1[k1][i1] % ny);
													xL = xl[W3];
													xR = xl[W3 + 1];
													W3 = nx - (C1[k1][i1] / ny);
													yU = yl[W3];
													yD = yl[W3 - 1];

													if (Y2 > Y1)
													{
														if (X2 <  X1)
														{
															W4 = abs(Y2 - Y1);
															Z[aux1].intersection[k2 + i1] = abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
														}
														else
															if (X2 == X1)
															{
																Z[aux1].intersection[k2 + i1] = abs(xR - X2);
															}
													}
													else
														if (Y1 > Y2)
														{
															if (X1 <  X2)
															{
																W4 = abs(Y1 - Y2);
																Z[aux1].intersection[k2 + i1] = abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
															}
															else
																if (X1 == X2)
																{
																	Z[aux1].intersection[k2 + i1] = abs(xR - X1);
																}
														}
														else
															if (Y1 == Y2)
															{
																Z[aux1].intersection[k2 + i1] = abs(yU - Y1);
															}
												}
												else
													if (Sitg[C2[k1][i1] * 3] == 3)
													{
														W2 = C2[k1][i1] * 3 + 1;
														X1 = Sitl[Sitg[W2]].X1;
														Y1 = Sitl[Sitg[W2]].Y1;
														X2 = Sitl[Sitg[W2]].X2;
														Y2 = Sitl[Sitg[W2]].Y2;

														W3 = (C1[k1][i1] % ny);
														xL = xl[W3];
														xR = xl[W3 + 1];
														W3 = nx - (C1[k1][i1] / ny);
														yU = yl[W3];
														yD = yl[W3 - 1];

														if (y2 >  y1)
														{
															if (Y2 >  Y1)
															{
																if (X2 > X1)
																{
																	W4 = abs(Y2 - Y1);
																	Aux1 = abs(Y1 - yD) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
																}
															}
															else
																if (Y1 >  Y2)
																{
																	if (X1 > X2)
																	{
																		W4 = abs(Y1 - Y2);
																		Aux1 = abs(Y2 - yD) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
																	}
																}
																else
																	if (Y1 == Y2)
																	{
																		Aux1 = abs(Y1 - yD);
																	}
														}
														else
															if (y2 <= y1)
															{
																if (Y2 >  Y1)
																{
																	if (X2 < X1)
																	{
																		W4 = abs(Y2 - Y1);
																		Aux1 = 1.0 - (abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0);
																	}
																}
																else
																	if (Y1 >  Y2)
																	{
																		if (X1 < X2)
																		{
																			W4 = abs(Y1 - Y2);
																			Aux1 = 1.0 - (abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0);
																		}
																	}
																	else
																		if (Y1 == Y2)
																		{
																			Aux1 = abs(Y1 - yD);
																		}
															}

														W2 = C2[k1][i1] * 3 + 2;
														X1 = Sitr[Sitg[W2]].X1;
														Y1 = Sitr[Sitg[W2]].Y1;
														X2 = Sitr[Sitg[W2]].X2;
														Y2 = Sitr[Sitg[W2]].Y2;

														if (Y2 > Y1)
														{
															if (X2 <  X1)
															{
																W4 = abs(Y2 - Y1);
																Aux2 = abs(yU - Y2) + abs(xR - X1) * W4 + (abs(X1 - X2) * W4) / 2.0;
															}
															else
																if (X2 == X1)
																{
																	Aux2 = abs(xR - X2);
																}
														}
														else
															if (Y1 > Y2)
															{
																if (X1 <  X2)
																{
																	W4 = abs(Y1 - Y2);
																	Aux2 = abs(yU - Y1) + abs(xR - X2) * W4 + (abs(X2 - X1) * W4) / 2.0;
																}
																else
																	if (X1 == X2)
																	{
																		Aux2 = abs(xR - X1);
																	}
															}
															else
																if (Y1 == Y2)
																{
																	Aux2 = abs(yU - Y1);
																}

														Z[aux1].intersection[k2 + i1] = Aux2 - (1.0 - Aux1);
													}
											Z[aux1].sumofintersections += Z[aux1].intersection[k2 + i1];
										}
										k2 += W1;
									}
									W2 = V3.size() - s1;
									W3 = Z[aux1].count - W2;
									for (k1 = 0; k1 < W2; k1++)
									{
										Z[aux1].index[W3 + k1] = V3[s1 + k1];
										Z[aux1].intersection[W3 + k1] = 1.0;
										Z[aux1].sumofintersections += 1.0;
									}

									unsigned int *auxvect1;
									float *auxvect2;

									auxvect1 = (unsigned int*)malloc(Z[aux1].count * sizeof(unsigned int));
									if (auxvect1 == NULL)
									{
										MessageBox(NULL, TEXT("problem -> auxvect1.."), TEXT("!"), MB_OK);
										Sleep(3000);
										exit(EXIT_FAILURE);
									}
									auxvect2 = (float*)malloc(Z[aux1].count * sizeof(float));
									if (auxvect2 == NULL)
									{
										MessageBox(NULL, TEXT("problem -> auxvect2.."), TEXT("!"), MB_OK);
										Sleep(3000);
										exit(EXIT_FAILURE);
									}

									unsigned int K = 0;
									W2 = Z[aux1].count;
									for (k1 = 0; k1 < W2; k1++)
										if (Z[aux1].intersection[k1] > 0.0)
										{
											W3 = Z[aux1].index[k1];
											auxvect1[K] = W3;
											auxvect2[K] = Z[aux1].intersection[k1];
											pmO[W3] += Z[aux1].intersection[k1];

											if (SMO == true)
											{
												S[aux1] += Z[aux1].intersection[k1] * Oi1[W3];
											}

											K++;
										}
										else
										{
											Z[aux1].sumofintersections -= Z[aux1].intersection[k1];
										}
									Z[aux1].count = K;
									free(Z[aux1].index);
									free(Z[aux1].intersection);
									Z[aux1].index = auxvect1;
									Z[aux1].intersection = auxvect2;
								}
				}
				else
				{
					if (SL.size() == 0)
					{
						/*
						MessageBox(NULL, TEXT("SL"), TEXT("!"), MB_OK);
						*/
					}
					else
						if (SR.size() == 0)
						{
							/*
							MessageBox(NULL, TEXT("SR"), TEXT("!"), MB_OK);
							*/
						}
				}
			}

			V1.clear();
			V2.clear();
			V3.clear();
			ST.clear();
			SL.clear();
			SR.clear();

			for (k1 = 0; k1 < nx; k1++)
			{
				C1[k1].clear();
				C2[k1].clear();
			}

			Sitl.clear();
			Sitr.clear();
		}

		if (id == 0)
		{
			InterlockedExchange(SystemMatrix, (unsigned int)((((float)(j - J1)) / ((float)(J2 - J1))) * 100.0));
		}
	}

	if (dc)
	{
		free(dc);
	}
	if (xl)
	{
		free(xl);
	}
	if (yl)
	{
		free(yl);
	}
	if (xV1)
	{
		free(xV1);
	}
	if (yV1)
	{
		free(yV1);
	}
	if (xV2)
	{
		free(xV2);
	}
	if (yV2)
	{
		free(yV2);
	}
	if (Sitg)
	{
		free(Sitg);
	}

	delete[] C1;
	delete[] C2;

	InterlockedDecrement(busy + id);

	return 0;
}

DWORD WINAPI SbIR(LPVOID lpParam)
{
	unsigned int id = PtrToInt(lpParam);

	if (run == true)
	{
		INF *pZ;
		float sit;
		float *RI3;
		float *pF1;
		float Aux1;
		float *pf1;
		unsigned int i;
		unsigned int j;
		unsigned int k;
		unsigned int z;
		unsigned int J1;
		unsigned int J2;
		unsigned int i3;
		unsigned int i4;
		cudaError_t err;
		unsigned int Max;
		unsigned int nC2;
		unsigned int aux1;
		unsigned int aux2;
		unsigned int *pi1;
		unsigned int nrays;
		unsigned int index1;
		unsigned int index2;
		dim3 dimBlock(8, 8);
		unsigned int nxny = (nx * ny);

		/* b *************************************************************************** */

		bool noise = false;

		if (noise == true)
		{
			if (id == 0)
			{
				FILE *fn;
				float fv;
				if (fopen_s(&fn, "noise-0.002.txt", "r") == 0)
				{
					for (j = 0; j < nv; j++)
					{
						for (i = 0; i < nd; i++)
						{
							fscanf_s(fn, "%f", &fv);

							aux1 = (i * nv + j);

							S[aux1] = (S[aux1] + fv);
						}
					}
					fclose(fn);
				}
				else
				{
					MessageBox(NULL, TEXT("problem! at fn"), TEXT("!"), MB_OK);
				}
			}

			EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
		}

		/* e *************************************************************************** */
		
		float *pRi = (float*)malloc(nxny * sizeof(float));
		if (pRi == NULL)
		{
			MessageBox(NULL, TEXT("problem -> pRi.."), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}
		RIv[id] = pRi;

		pi1 = iIn2;
		for (i = 0; i < nIn2; i++)
		{
			pRi[*pi1] = 0.0;

			pi1++;
		}

		aux1 = (nIn1 / nT);
		J1 = (id * aux1);
		if (id < (nT - 1))
		{
			J2 = (J1 + aux1);
		}
		else
		{
			J2 = nIn1;
		}

		/*
		float avg;

		avg = 0.0;
		for (j = Spos; j < Epos; j++)
		{
			for (i = 0; i < nd; i++)
			{
				aux1 = (i * nv + j);

				avg += S[aux1];
			}
		}

		avg /= (Epos - Spos);

		for (j = Spos; j < Epos; j++)
		{
			sit = 0.0;
			for (i = 0; i < nd; i++)
			{
				aux1 = (i * nv + j);

				sit += S[aux1];
			}

			for (i = 0; i < nd; i++)
			{
				aux1 = (i * nv + j);

				S[aux1] *= (avg / sit);
			}
		}
		*/

		for (j = J1; j < J2; j++)
		{
			aux1 = iIn1[j];
			pZ = (Z + aux1);
			aux2 = pZ->count;

			if (aux2 > 0)
			{
				Aux1 = (S[aux1] / pZ->sumofintersections);

				pi1 = pZ->index;
				pf1 = pZ->intersection;
				for (k = 0; k < aux2; k++)
				{
					pRi[*pi1] += ((*pf1) * Aux1);

					pi1++;
					pf1++;
				}
			}
		}

		EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

		if (id == 0)
		{
			if (SMO == true)
			{
				InterlockedIncrement(Ready);
			}
		}

		aux1 = (nIn2 / nT);
		i3 = (id * aux1);
		if (id < (nT - 1))
		{
			i4 = (i3 + aux1);
		}
		else
		{
			i4 = nIn2;
		}

		for (k = 0; k < nT; k++)
		{
			pf1 = RIv[k];
			pi1 = (iIn2 + i3);
			for (i = i3; i < i4; i++)
			{
				RI1[*pi1] += pf1[*pi1];

				pi1++;
			}
		}

		pi1 = (iIn2 + i3);
		for (i = i3; i < i4; i++)
		{
			if (mO1[*pi1] > 0.0)
			{
				RI1[*pi1] /= mO1[*pi1];
			}

			pi1++;
		}

		if (UGC == true)
		{
			if (nT > 1)
			{
				EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
			}

			if (id == 0)
			{
				Max = Z[iIn1[0]].count;

				for (i = 1; i < nIn1; i++)
				{
					if (Z[iIn1[i]].count > Max)
					{
						Max = Z[iIn1[i]].count;
					}
				}

				MAX = Max;

				SetEvent(cudaEventG);

				while (WaitForSingleObject(cudaEventg, 20) != WAIT_OBJECT_0)
				{
					Sleep(20);
				}

				ResetEvent(cudaEventg);
			}
			else
			{
				SuspendThread(GetCurrentThread());
			}

			Max = MAX;

			if (er > 0)
			{
				if (id == 0)
				{
					err = cudaMalloc(&dRI1, (2 * nxny + 2) * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dRI1.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
					
					err = cudaMalloc(&dindices, er * Max * sizeof(int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dindices.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
					
					err = cudaMalloc(&dIntersections, er * Max * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dIntersections.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
					
					err = cudaMalloc(&dCounts, er * sizeof(int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dCounts.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
					
					err = cudaMalloc(&dSumsOfIntersections, er * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dSumsOfIntersections.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
					
					err = cudaMalloc(&dS, er * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dS.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dparameters, 7 * sizeof(unsigned int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dparameters.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					unsigned int *parameters = (unsigned int*)malloc(7 * sizeof(unsigned int));
					if (parameters == NULL)
					{
						MessageBox(NULL, TEXT("Failed to allocate parameters.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					RI1 = (float*)realloc(RI1, (2 * nxny + 2) * sizeof(float));

					g_TargetValue = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);

					parameters[0] = nxny;
					parameters[1] = GpuThreads;
					RI1[2*nxny]   = ((*WorkGPU) / GpuThreads);
					RI1[2*nxny+1] = ((*WorkGPU) % GpuThreads);
					parameters[4] = Max;

					cudaDeviceProp cDP;
					cudaGetDeviceProperties(&cDP, GPUSelection);

					parameters[5] = cDP.major;
					parameters[6] = cDP.minor;
					parameters[2] = cDP.clockRate;

					err = cudaMemcpy(dparameters, parameters, 7 * sizeof(unsigned int), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy parameters from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					free(parameters);

					iTotalv = (unsigned int**)malloc(nT * sizeof(unsigned int*));
					fTotalv = (float**)malloc(nT * sizeof(float*));
					pri = (float**)malloc(nT * sizeof(float*));

					for (k = 0; k < nT; k++)
					{
						i = (k * (er / nT));
						if (k < (nT - 1))
						{
							aux1 = (i + er / nT);
						}
						else
						{
							aux1 = er;
						}

						iTotalv[k] = (unsigned int*)malloc((aux1 - i) * Max * sizeof(unsigned int));
						if (iTotalv[k] == NULL)
						{
							MessageBox(NULL, TEXT("problem -> iTotalv.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
						fTotalv[k] = (float*)malloc((aux1 - i) * Max * sizeof(float));
						if (fTotalv[k] == NULL)
						{
							MessageBox(NULL, TEXT("problem -> fTotalv.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
					}

					cudaStreamCreate(&stream);
				}

				if (nT > 1)
				{
					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
				}

				if (id == 0)
				{
					RI3 = (float*)malloc(nxny * sizeof(float));
					if (RI3 == NULL)
					{
						MessageBox(NULL, TEXT("problem -> RI3.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
					pri[0] = RI3;
				}

				aux1 = (er / nT);
				index1 = (id * aux1);
				if (id < (nT - 1))
				{
					index2 = (index1 + aux1);
				}
				else
				{
					index2 = er;
				}

				unsigned int *iTotal = iTotalv[id];

				k = 0;
				for (i = index1; i < index2; i++)
				{
					/*
					aux1 = Z[i].Count;

					pi1 = Z[i].ind1;
					for (j = 0; j < aux1; j++)
					{
						iTotal[k + j] = (*pi1);
						pi1++;
					}
					*/

					memcpy(iTotal + k, Z[iIn1[i]].index, Z[iIn1[i]].count * sizeof(unsigned int));

					k += Max;
				}

				err = cudaMemcpy(dindices + index1 * Max, iTotal, (index2 - index1) * Max * sizeof(unsigned int), cudaMemcpyHostToDevice);
				if (err != cudaSuccess)
				{
					MessageBox(NULL, TEXT("Failed to copy iTotal from host to device.."), TEXT("!"), MB_OK);
					Sleep(3000);
					exit(EXIT_FAILURE);
				}

				if (id == 0)
				{
					for (i = 0; i < er; i++)
					{
						iTotal[i] = Z[iIn1[i]].count;
					}

					err = cudaMemcpy(dCounts, iTotal, er * sizeof(unsigned int), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy iTotal from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
				}

				float *fTotal = fTotalv[id];

				k = 0;
				for (i = index1; i < index2; i++)
				{
					/*
					aux1 = Z[i].Count;

					pf1 = Z[i].Seg1;
					for (j = 0; j < aux1; j++)
					{
						fTotal[k + j] = (*pf1);
						pf1++;
					}
					*/

					memcpy(fTotal + k, Z[iIn1[i]].intersection, Z[iIn1[i]].count * sizeof(float));

					k += Max;
				}

				err = cudaMemcpy(dIntersections + index1 * Max, fTotal, (index2 - index1) * Max * sizeof(float), cudaMemcpyHostToDevice);
				if (err != cudaSuccess)
				{
					MessageBox(NULL, TEXT("Failed to copy fTotal from host to device.."), TEXT("!"), MB_OK);
					Sleep(3000);
					exit(EXIT_FAILURE);
				}

				if (id == 0)
				{
					for (i = 0; i < er; i++)
					{
						fTotal[i] = Z[iIn1[i]].sumofintersections;
					}

					err = cudaMemcpy(dSumsOfIntersections, fTotal, er * sizeof(float), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy fTotal from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					float *A = (float*)malloc(er * sizeof(float));

					for (i = 0; i < er; i++)
					{
						A[i] = S[iIn1[i]];
					}

					err = cudaMemcpy(dS, A, er * sizeof(float), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy s from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					free(A);
				}

				/*
				this synchronization is to wait for all threads to have copy done, and to ensure that RI1 is already constructed before being accessed in the iterations
				*/
				if (nT > 1)
				{
					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					if (id == 0)
					{
						for (i = 0; i < nT; i++)
						{
							free(iTotalv[i]);
						}
						free(iTotalv);

						for (i = 0; i < nT; i++)
						{
							free(fTotalv[i]);
						}
						free(fTotalv);
					}
				}
			}
		}

		float *RI2 = (float*)malloc(nxny * sizeof(float));
		if (RI2 == NULL)
		{
			MessageBox(NULL, TEXT("problem -> RI2.."), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}
		pRI[id] = RI2;

		if ((UGC == true) && (er > 0))
		{
			aux1 = ((nIn1 - (*WorkGPU)) / nT);
			J1 = ((*WorkGPU) + id * aux1);
			if (id < (nT - 1))
			{
				J2 = (J1 + aux1);
			}
			else
			{
				J2 = nIn1;
			}
		}
		else
		{
			aux1 = (nIn1 / nT);
			J1 = (id * aux1);
			if (id < (nT - 1))
			{
				J2 = (J1 + aux1);
			}
			else
			{
				J2 = nIn1;
			}
		}

		unsigned int *rays = (unsigned int*)malloc(nIn1 * sizeof(unsigned int));
		if (rays == NULL)
		{
			MessageBox(NULL, TEXT("problem -> rays.."), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}

		nrays = 0;
		for (i = J1; i < J2; i++)
		{
			rays[nrays] = iIn1[i];
			nrays++;
		}

		nC2 = (i4 - i3);

		unsigned int *in2 = (unsigned int*)malloc(nC2 * sizeof(unsigned int));
		if (in2 == NULL)
		{
			MessageBox(NULL, TEXT("problem -> in2 == NULL"), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}

		pi1 = (iIn2 + i3);
		for (i = i3; i < i4; i++)
		{
			in2[i - i3] = (*pi1);
			pi1++;
		}

		if ((UGC == true) && (er > 0))
		{
			if (id == 0)
			{
				TCHAR output1[_CVTBUFSIZE];
				TCHAR *oE = NULL;
				unsigned int X;

				if (NI > 0)
				{
					oE = (TCHAR*)malloc(_CVTBUFSIZE * sizeof(TCHAR));
					swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
					X = _CVTBUFSIZE;
				}

				float *res = NULL;
				unsigned int Already;

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						res = (float*)malloc(NI * sizeof(float));

						Already = 0;
					}

					oImage = 0.0;

					for (i = 0; i < nIn1; i++)
					{
						oImage += S[iIn1[i]];
					}
				}

				/*
				FILE *fl;
				FILE *fc;
				FILE *fi;
				if (fopen_s(&fl, "outl.txt", "w") == 0)
				{
					if (fopen_s(&fc, "outc.txt", "w") == 0)
					{
						if (fopen_s(&fi, "outi.txt", "w") == 0)
						{
							for (j = 0; j < nv; j++)
							{
								aux2 = j * nd;
								for (i = 0; i < nd; i++)
								{
									aux1 = i * nv + j;

									z = Z[aux1].count;
									for (k = 0; k < z; k++)
									{
										fwprintf_s(fl, TEXT("%d\n"), aux2 + i);
										fwprintf_s(fc, TEXT("%d\n"), (Z[aux1].index[k] % ny) * nx + (Z[aux1].index[k] / nx));
										fwprintf_s(fi, TEXT("%f\n"), Z[aux1].intersection[k]);
									}
								}
							}

							fclose(fi);
						}
						else
						{
							MessageBox(NULL, TEXT("problem! at fi"), TEXT("!"), MB_OK);
						}

						fclose(fc);
					}
					else
					{
						MessageBox(NULL, TEXT("problem! at fc"), TEXT("!"), MB_OK);
					}

					fclose(fl);
				}
				else
				{
					MessageBox(NULL, TEXT("problem! at fl"), TEXT("!"), MB_OK);
				}
				*/

				clock_t t1;
				clock_t t2;
				clock_t T1;
				clock_t T2;

				unsigned int bytesDtH = (nxny * sizeof(float));
				unsigned int bytesHtD = (2 * bytesDtH + 2 * sizeof(float));
				float *PF = (dRI1 + nxny);

				float tGPU;

				clock_t Ib;
				clock_t If;
				clock_t bGPU;

				for (z = NI; z != 0; z--)
				{
					Ib = clock();

					for (i = 0; i < nxny; i++)
					{
						RI1[nxny + i] = 0.0;
					}

					cudaMemcpy(dRI1, RI1, bytesHtD, cudaMemcpyHostToDevice);

					(*g_TargetValue) = 0;

					bGPU = clock();

					iterations_SbIR << <GpuThreads / 64, dimBlock, 0, stream >> > (dRI1, dindices, dIntersections, dCounts, dSumsOfIntersections, dS, dparameters);
					cudaStreamAddCallback(stream, MyCallback, NULL, 0);

					for (i = 0; i < nxny; i++)
					{
						RI2[i] = 0.0;
					}

					T1 = clock();

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						pi1 = pZ->index;
						pf1 = pZ->intersection;

						sit = 0.0;
						for (k = 0; k < index2; k++)
						{
							sit += ((*pf1) * RI1[*pi1]);

							pi1++;
							pf1++;
						}

						if (sit > 0.0)
						{
							Aux1 = (S[index1] / sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += ((*pf1) * RI1[*pi1] * Aux1);
								pi1++;
								pf1++;
							}
						}
						else
						{
							if (index2 > 0)
							{
								Aux1 = (S[index1] / pZ->sumofintersections);

								pi1 = pZ->index;
								pf1 = pZ->intersection;
								for (k = 0; k < index2; k++)
								{
									RI2[*pi1] += ((*pf1) * Aux1);
									pi1++;
									pf1++;
								}
							}
						}
					}

					T2 = clock();

					t1 = clock();

					unsigned int ui1 = 0;

					while ((*g_TargetValue) == 0)
					{
						WaitOnAddress(g_TargetValue, &ui1, sizeof(unsigned int), INFINITE);
					}

					t2 = clock();

					cudaMemcpy(pri[0], PF, bytesDtH, cudaMemcpyDeviceToHost);

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];

					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					pF1 = pri[0];

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];
						RI1[aux1] = (pf1[aux1] + pF1[aux1]);

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RI1[aux1] / mO1[aux1]);
						}
					}

					if (LoadBalancing == true)
					{
						Aux1 = (((float)(T2 - T1)) / ((float)CLOCKS_PER_SEC));

						tGPU = (((float)(eGPU - bGPU)) / ((float)CLOCKS_PER_SEC));

						if (Aux1 > 0.0)
						{
							float x;

							x = (((((float)nrays) / ((float)(*WorkGPU))) * tGPU) / Aux1);

							if (x > 0.0)
							{
								x = (1.0 / x);

								(*WorkGPU) = (x * (unsigned int)(((float)(nIn1)) / (x + ((float)nT))));

								(*WorkGPU) = ((*WorkGPU) >= GpuThreads ? (*WorkGPU) : GpuThreads);

								(*WorkGPU) = ((*WorkGPU) <= er ? (*WorkGPU) : er);

/*
FILE *f1;
if (fopen_s(&f1, "timings.txt", "a+") == 0)
{
fwprintf_s(f1,TEXT("it:%d,nrays:%u,T2=%d,T1=%d,eGPU=%d,bGPU=%d,%f,%f,%f,%f,%u\n"),z,nrays,T2,T1,eGPU,bGPU,((float)(*WorkGPU)),tGPU,Aux1,x,(unsigned int)(((float)(nIn1))/((1.0/x)+((float)nT))));
fclose(f1);
}
else
{
MessageBox(NULL, TEXT("problem! ..."), TEXT("!"), MB_OK);
}
*/

								pf1 = (RI1 + (2 * nxny));

								(*pf1) = ((*WorkGPU) / GpuThreads);

								pf1++;

								(*pf1) = ((*WorkGPU) % GpuThreads);
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					If = clock();

					if (UPDATE == true)
					{
						res[NI - z] = (((float)(If - Ib)) / ((float)CLOCKS_PER_SEC));

						if (((*NofU) % 3) == 0)
						{
							ResetEvent(ghEvent5);

							for (i = 0; i < nxny; i++)
							{
								ri1[i] = RI1[i];
							}

							for (i = Already; i <= (NI - z); i++)
							{
								itv[ALREADY + i] = res[i];
							}

							Already = (NI - z + 1);
							nit = Already;

							InterlockedIncrement(NofU);
						}
					}

					InterlockedIncrement(currentIteration);

					if (z == NI)
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("time at iteration %5d: %23.10lf"), *currentIteration,res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("finished iteration  ---------->  %15d"),     *currentIteration);
						}
					}
					else
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\ntime at iteration %5d: %23.10lf"), *currentIteration,res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\nfinished iteration  ---------->  %15d"), *currentIteration);
						}
					}

					if (((*nofu) % 2) == 0)
					{
						unsigned int x;

						x = (wcslen(oE) + wcslen(output1) + 1);
						oe = (TCHAR*)realloc(oe, x * sizeof(TCHAR));

						if (oe == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oe.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oe, x, TEXT(""));
						wcscat_s(oe, x, oE);
						wcscat_s(oe, x, output1);

						ResetEvent(ghEvent6);

						InterlockedIncrement(nofu);

						oE = (TCHAR*)realloc(oE, _CVTBUFSIZE * sizeof(TCHAR));

						if (oE == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
						X = _CVTBUFSIZE;
					}
					else
					{
						if ((wcslen(oE) + wcslen(output1)) >= X)
						{
							X = (wcslen(oE) + _CVTBUFSIZE);

							oE = (TCHAR*)realloc(oE, X * sizeof(TCHAR));

							if (oE == NULL)
							{
								MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
							}
						}

						wcscat_s(oE, X, output1);
					}

					if (LoadBalancing == true)
					{
						aux1 = ((nIn1 - (*WorkGPU)) / nT);
						J1 = ((*WorkGPU) + id * aux1);
						if (id < (nT - 1))
						{
							J2 = (J1 + aux1);
						}
						else
						{
							J2 = nIn1;
						}

						nrays = 0;
						for (i = J1; i < J2; i++)
						{
							rays[nrays] = iIn1[i];
							nrays++;
						}
					}
				}

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						for (i = 0; i < NI; i++)
						{
							ITV[ALREADY + i] = res[i];
						}

						NIT = NI;

						free(res);

						SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)2);
						InvalidateRect(hWndChildwindowC, NULL, true);
						UpdateWindow(hWndChildwindowC);
					}
				}

				if (NI > 0)
				{
					WaitForSingleObject(ghEvent6, INFINITE);
					ResetEvent(ghEvent6);

					int n = GetWindowTextLength(hWndEdit1);

					TCHAR *buffer = NULL;

					buffer = (TCHAR*)malloc((n + 1 + wcslen(oE)) * sizeof(TCHAR));

					GetWindowText(hWndEdit1, buffer, n + 1);

					wcscat_s(buffer, n + 1 + wcslen(oE), oE);

					SetWindowText(hWndEdit1, buffer);

					SCROLLINFO scr;
					scr.cbSize = sizeof(SCROLLINFO);
					scr.fMask = SIF_RANGE;
					GetScrollInfo(hWndEdit1, SB_VERT, &scr);
					SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

					free(buffer);

					free(oE);
					free(oe);
					oe = NULL;
				}
			}
			else
			{
				for (z = NI; z != 0; z--)
				{
					for (i = 0; i < nxny; i++)
					{
						RI2[i] = 0.0;
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						pi1 = pZ->index;
						pf1 = pZ->intersection;

						sit = 0.0;
						for (k = 0; k < index2; k++)
						{
							sit += ((*pf1) * RI1[*pi1]);

							pi1++;
							pf1++;
						}

						if (sit > 0.0)
						{
							Aux1 = (S[index1] / sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += ((*pf1) * RI1[*pi1] * Aux1);
								pi1++;
								pf1++;
							}
						}
						else
						{
							if (index2 > 0)
							{
								Aux1 = (S[index1] / pZ->sumofintersections);

								pi1 = pZ->index;
								pf1 = pZ->intersection;
								for (k = 0; k < index2; k++)
								{
									RI2[*pi1] += ((*pf1) * Aux1);
									pi1++;
									pf1++;
								}
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];

					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					pF1 = pri[0];

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];
						RI1[aux1] = (pf1[aux1] + pF1[aux1]);

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RI1[aux1] / mO1[aux1]);
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					if (LoadBalancing == true)
					{
						aux1 = ((nIn1 - (*WorkGPU)) / nT);
						J1 = ((*WorkGPU) + id * aux1);
						if (id < (nT - 1))
						{
							J2 = (J1 + aux1);
						}
						else
						{
							J2 = nIn1;
						}

						nrays = 0;
						for (i = J1; i < J2; i++)
						{
							rays[nrays] = iIn1[i];
							nrays++;
						}
					}
				}
			}
		}
		else
		{
			if (id == 0)
			{
				TCHAR output1[_CVTBUFSIZE];
				TCHAR *oE = NULL;
				unsigned int X;

				if (NI > 0)
				{
					oE = (TCHAR*)malloc(_CVTBUFSIZE * sizeof(TCHAR));
					swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
					X = _CVTBUFSIZE;
				}

				float *res = NULL;
				unsigned int Already;

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						res = (float*)malloc(NI * sizeof(float));

						Already = 0;
					}

					oImage = 0.0;

					for (i = 0; i < nIn1; i++)
					{
						oImage += S[iIn1[i]];
					}
				}

				clock_t Ib;
				clock_t If;

				for (z = NI; z != 0; z--)
				{
					Ib = clock();

					for (i = 0; i < nIn2; i++)
					{
						RI2[iIn2[i]] = 0.0;
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						pi1 = pZ->index;
						pf1 = pZ->intersection;

						sit = 0.0;
						for (k = 0; k < index2; k++)
						{
							sit += ((*pf1) * RI1[*pi1]);

							/*
							if (RI1[*pi1] == 0.0)
							{
								MessageBox(NULL, TEXT("element reaching 0.0"), TEXT("!"), MB_OK);
							}
							*/

							pi1++;
							pf1++;
						}

						if (sit > 0.0)
						{
							Aux1 = (S[index1] / sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += ((*pf1) * RI1[*pi1] * Aux1);
								pi1++;
								pf1++;
							}
						}
						else
						{
							/*
							MessageBox(NULL, TEXT("?"), TEXT("!"), MB_OK);
							*/

							if (index2 > 0)
							{
								Aux1 = (S[index1] / pZ->sumofintersections);

								pi1 = pZ->index;
								pf1 = pZ->intersection;
								for (k = 0; k < index2; k++)
								{
									RI2[*pi1] += ((*pf1) * Aux1);
									pi1++;
									pf1++;
								}
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];
					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (pf1[aux1] / mO1[aux1]);
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					If = clock();

					if (UPDATE == true)
					{
						res[NI - z] = (((float)(If - Ib)) / ((float)CLOCKS_PER_SEC));

						if (((*NofU) % 3) == 0)
						{
							ResetEvent(ghEvent5);

							for (i = 0; i < nxny; i++)
							{
								ri1[i] = RI1[i];
							}

							for (i = Already; i <= (NI - z); i++)
							{
								itv[ALREADY + i] = res[i];
							}

							Already = (NI - z + 1);
							nit = Already;

							InterlockedIncrement(NofU);
						}
					}

					InterlockedIncrement(currentIteration);

					if (z == NI)
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("time at iteration %5d: %23.10lf"), *currentIteration,res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("finished iteration  ---------->  %15d"),     *currentIteration);
						}
					}
					else
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\ntime at iteration %5d: %23.10lf"), *currentIteration,res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\nfinished iteration  ---------->  %15d"), *currentIteration);
						}
					}

					if (((*nofu) % 2) == 0)
					{
						unsigned int x;

						x = (wcslen(oE) + wcslen(output1) + 1);
						oe = (TCHAR*)realloc(oe, x * sizeof(TCHAR));

						if (oe == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oe.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oe, x, TEXT(""));
						wcscat_s(oe, x, oE);
						wcscat_s(oe, x, output1);

						ResetEvent(ghEvent6);

						InterlockedIncrement(nofu);

						oE = (TCHAR*)realloc(oE, _CVTBUFSIZE * sizeof(TCHAR));

						if (oE == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
						X = _CVTBUFSIZE;
					}
					else
					{
						if ((wcslen(oE) + wcslen(output1)) >= X)
						{
							X = (wcslen(oE) + _CVTBUFSIZE);

							oE = (TCHAR*)realloc(oE, X * sizeof(TCHAR));

							if (oE == NULL)
							{
								MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
							}
						}

						wcscat_s(oE, X, output1);
					}
				}

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						for (i = 0; i < NI; i++)
						{
							ITV[ALREADY + i] = res[i];
						}

						NIT = NI;

						free(res);

						SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)2);
						InvalidateRect(hWndChildwindowC, NULL, true);
						UpdateWindow(hWndChildwindowC);
					}
				}

				if (NI > 0)
				{
					WaitForSingleObject(ghEvent6, INFINITE);
					int n = GetWindowTextLength(hWndEdit1);

					TCHAR *buffer = NULL;

					buffer = (TCHAR*)malloc((n + 1 + wcslen(oE)) * sizeof(TCHAR));

					GetWindowText(hWndEdit1, buffer, n + 1);

					wcscat_s(buffer, n + 1 + wcslen(oE), oE);

					SetWindowText(hWndEdit1, buffer);

					SCROLLINFO scr;
					scr.cbSize = sizeof(SCROLLINFO);
					scr.fMask = SIF_RANGE;
					GetScrollInfo(hWndEdit1, SB_VERT, &scr);
					SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

					free(buffer);

					free(oE);
					free(oe);
					oe = NULL;
				}
			}
			else
			{
				for (z = NI; z != 0; z--)
				{
					for (i = 0; i < nIn2; i++)
					{
						RI2[iIn2[i]] = 0.0;
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						pi1 = pZ->index;
						pf1 = pZ->intersection;

						sit = 0.0;
						for (k = 0; k < index2; k++)
						{
							sit += ((*pf1) * RI1[*pi1]);

							/*
							if (RI1[*pi1] == 0.0)
							{
								MessageBox(NULL, TEXT("element reaching 0.0"), TEXT("!"), MB_OK);
							}
							*/

							pi1++;
							pf1++;
						}

						if (sit > 0.0)
						{
							Aux1 = (S[index1] / sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += ((*pf1) * RI1[*pi1] * Aux1);
								pi1++;
								pf1++;
							}
						}
						else
						{
							/*
							MessageBox(NULL, TEXT("!!"), TEXT("!"), MB_OK);
							*/

							if (index2 > 0)
							{
								Aux1 = (S[index1] / pZ->sumofintersections);

								pi1 = pZ->index;
								pf1 = pZ->intersection;
								for (k = 0; k < index2; k++)
								{
									RI2[*pi1] += ((*pf1) * Aux1);
									pi1++;
									pf1++;
								}
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];
					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];

							pf1[aux1] += pF1[aux1];
						}
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (pf1[aux1] / mO1[aux1]);
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
				}
			}
		}

		free(rays);
		free(in2);
	}
	else
	{
		INF *pZ;
		float sit;
		float *RI3;
		float Aux1;
		float *pf1;
		float *pF1;
		unsigned int i;
		unsigned int k;
		unsigned int z;
		unsigned int J1;
		unsigned int J2;
		unsigned int i3;
		unsigned int i4;
		cudaError_t err;
		unsigned int Max;
		unsigned int nC2;
		unsigned int aux1;
		unsigned int *pi1;
		unsigned int nrays;
		dim3 dimBlock(8, 8);
		unsigned int index1;
		unsigned int index2;
		unsigned int nxny = (nx * ny);

		if (UGC == true)
		{
			if (nT > 1)
			{
				EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
			}

			if (id == 0)
			{
				Max = Z[iIn1[0]].count;

				for (i = 1; i < nIn1; i++)
				{
					if (Z[iIn1[i]].count > Max)
					{
						Max = Z[iIn1[i]].count;
					}
				}

				MAX = Max;

				SetEvent(cudaEventG);

				while (WaitForSingleObject(cudaEventg, 20) != WAIT_OBJECT_0)
				{
					Sleep(20);
				}

				ResetEvent(cudaEventg);
			}
			else
			{
				SuspendThread(GetCurrentThread());
			}

			Max = MAX;

			if (er > 0)
			{
				if (id == 0)
				{
					err = cudaMalloc(&dRI1, (2 * nxny + 2) * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dRI1.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dindices, er * Max * sizeof(int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dindices.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dIntersections, er * Max * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dIntersections.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dCounts, er * sizeof(int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dCounts.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dSumsOfIntersections, er * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dSumsOfIntersections.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dS, er * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dS.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dparameters, 7 * sizeof(unsigned int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dparameters.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					unsigned int *parameters = (unsigned int*)malloc(7 * sizeof(unsigned int));
					if (parameters == NULL)
					{
						MessageBox(NULL, TEXT("Failed to allocate parameters.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					RI1 = (float*)realloc(RI1, (2 * nxny + 2) * sizeof(float));

					g_TargetValue = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);

					parameters[0] = nxny;
					parameters[1] = GpuThreads;
					RI1[2 * nxny] = ((*WorkGPU) / GpuThreads);
					RI1[2 * nxny + 1] = ((*WorkGPU) % GpuThreads);
					parameters[4] = Max;

					cudaDeviceProp cDP;
					cudaGetDeviceProperties(&cDP, GPUSelection);

					parameters[5] = cDP.major;
					parameters[6] = cDP.minor;
					parameters[2] = cDP.clockRate;

					err = cudaMemcpy(dparameters, parameters, 7 * sizeof(unsigned int), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy parameters from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					free(parameters);

					iTotalv = (unsigned int**)malloc(nT * sizeof(unsigned int*));
					fTotalv = (float**)malloc(nT * sizeof(float*));
					pri = (float**)malloc(nT * sizeof(float*));

					unsigned int aux1;

					unsigned int k;
					unsigned int i;

					for (k = 0; k < nT; k++)
					{
						i = (k * (er / nT));
						if (k < (nT - 1))
						{
							aux1 = (i + er / nT);
						}
						else
						{
							aux1 = er;
						}

						iTotalv[k] = (unsigned int*)malloc((aux1 - i) * Max * sizeof(unsigned int));
						if (iTotalv[k] == NULL)
						{
							MessageBox(NULL, TEXT("problem -> iTotalv.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
						fTotalv[k] = (float*)malloc((aux1 - i) * Max * sizeof(float));
						if (fTotalv[k] == NULL)
						{
							MessageBox(NULL, TEXT("problem -> fTotalv.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
					}

					cudaStreamCreate(&stream);
				}

				if (nT > 1)
				{
					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
				}

				if (id == 0)
				{
					RI3 = (float*)malloc(nxny * sizeof(float));
					if (RI3 == NULL)
					{
						MessageBox(NULL, TEXT("problem -> RI3.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
					pri[0] = RI3;
				}

				aux1 = (er / nT);
				index1 = (id * aux1);
				if (id < (nT - 1))
				{
					index2 = (index1 + aux1);
				}
				else
				{
					index2 = er;
				}

				unsigned int *iTotal = iTotalv[id];

				k = 0;
				for (i = index1; i < index2; i++)
				{
					/*
					aux1 = Z[i].Count;

					pi1 = Z[i].ind1;
					for (j = 0; j < aux1; j++)
					{
						iTotal[k + j] = (*pi1);
						pi1++;
					}
					*/

					memcpy(iTotal + k, Z[iIn1[i]].index, Z[iIn1[i]].count * sizeof(unsigned int));

					k += Max;
				}

				err = cudaMemcpy(dindices + index1 * Max, iTotal, (index2 - index1) * Max * sizeof(unsigned int), cudaMemcpyHostToDevice);
				if (err != cudaSuccess)
				{
					MessageBox(NULL, TEXT("Failed to copy iTotal from host to device.."), TEXT("!"), MB_OK);
					Sleep(3000);
					exit(EXIT_FAILURE);
				}

				if (id == 0)
				{
					for (i = 0; i < er; i++)
					{
						iTotal[i] = Z[iIn1[i]].count;
					}

					err = cudaMemcpy(dCounts, iTotal, er * sizeof(unsigned int), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy iTotal from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
				}

				float *fTotal = fTotalv[id];

				k = 0;
				for (i = index1; i < index2; i++)
				{
					/*
					aux1 = Z[i].Count;

					pf1 = Z[i].Seg1;
					for (j = 0; j < aux1; j++)
					{
						fTotal[k + j] = (*pf1);
						pf1++;
					}
					*/

					memcpy(fTotal + k, Z[iIn1[i]].intersection, Z[iIn1[i]].count * sizeof(float));

					k += Max;
				}

				err = cudaMemcpy(dIntersections + index1 * Max, fTotal, (index2 - index1) * Max * sizeof(float), cudaMemcpyHostToDevice);
				if (err != cudaSuccess)
				{
					MessageBox(NULL, TEXT("Failed to copy fTotal from host to device.."), TEXT("!"), MB_OK);
					Sleep(3000);
					exit(EXIT_FAILURE);
				}

				if (id == 0)
				{
					for (i = 0; i < er; i++)
					{
						fTotal[i] = Z[iIn1[i]].sumofintersections;
					}

					err = cudaMemcpy(dSumsOfIntersections, fTotal, er * sizeof(float), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy fTotal from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					float *A = (float*)malloc(er * sizeof(float));

					for (i = 0; i < er; i++)
					{
						A[i] = S[iIn1[i]];
					}

					err = cudaMemcpy(dS, A, er * sizeof(float), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy s from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					free(A);
				}

				/*
this synchronization is to wait for all threads to have copy done, and to ensure that RI1 is already constructed before being accessed in the iterations
				*/
				if (nT > 1)
				{
					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					if (id == 0)
					{
						for (i = 0; i < nT; i++)
						{
							free(iTotalv[i]);
						}
						free(iTotalv);

						for (i = 0; i < nT; i++)
						{
							free(fTotalv[i]);
						}
						free(fTotalv);
					}
				}
			}
		}

		float *RI2 = (float*)malloc(nxny * sizeof(float));
		if (RI2 == NULL)
		{
			MessageBox(NULL, TEXT("problem -> RI2.."), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}
		pRI[id] = RI2;

		if ((UGC == true) && (er > 0))
		{
			aux1 = ((nIn1 - (*WorkGPU)) / nT);
			J1 = ((*WorkGPU) + id * aux1);
			if (id < (nT - 1))
			{
				J2 = (J1 + aux1);
			}
			else
			{
				J2 = nIn1;
			}
		}
		else
		{
			aux1 = (nIn1 / nT);
			J1 = (id * aux1);
			if (id < (nT - 1))
			{
				J2 = (J1 + aux1);
			}
			else
			{
				J2 = nIn1;
			}
		}

		unsigned int *rays = (unsigned int*)malloc(nIn1 * sizeof(unsigned int));
		if (rays == NULL)
		{
			MessageBox(NULL, TEXT("problem -> rays.."), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}

		nrays = 0;
		for (i = J1; i < J2; i++)
		{
			rays[nrays] = iIn1[i];
			nrays++;
		}

		aux1 = (nIn2 / nT);
		i3 = (id * aux1);
		if (id < (nT - 1))
		{
			i4 = (i3 + aux1);
		}
		else
		{
			i4 = nIn2;
		}

		nC2 = (i4 - i3);

		unsigned int *in2 = (unsigned int*)malloc(nC2 * sizeof(unsigned int));
		if (in2 == NULL)
		{
			MessageBox(NULL, TEXT("problem -> in2 == NULL"), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}

		pi1 = (iIn2 + i3);
		for (i = i3; i < i4; i++)
		{
			in2[i - i3] = (*pi1);
			pi1++;
		}

		if ((UGC == true) && (er > 0))
		{
			if (id == 0)
			{
				TCHAR output1[_CVTBUFSIZE];
				TCHAR *oE = NULL;
				unsigned int X;

				if (NI > 0)
				{
					oE = (TCHAR*)malloc(_CVTBUFSIZE * sizeof(TCHAR));
					swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
					X = _CVTBUFSIZE;
				}

				float *res = NULL;
				unsigned int Already;

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						res = (float*)malloc(NI * sizeof(float));

						Already = 0;
					}
				}

				clock_t t1;
				clock_t t2;
				clock_t T1;
				clock_t T2;

				unsigned int bytesDtH = (nxny * sizeof(float));
				unsigned int bytesHtD = (2 * bytesDtH + 2 * sizeof(float));
				float *PF = (dRI1 + nxny);

				float tGPU;

				clock_t Ib;
				clock_t If;
				clock_t bGPU;

				for (z = NI; z != 0; z--)
				{
					Ib = clock();

					for (i = 0; i < nxny; i++)
					{
						RI1[nxny + i] = 0.0;
					}

					cudaMemcpy(dRI1, RI1, bytesHtD, cudaMemcpyHostToDevice);

					(*g_TargetValue) = 0;

					bGPU = clock();

					iterations_SbIR << <GpuThreads / 64, dimBlock, 0, stream >> > (dRI1, dindices, dIntersections, dCounts, dSumsOfIntersections, dS, dparameters);
					cudaStreamAddCallback(stream, MyCallback, NULL, 0);

					for (i = 0; i < nxny; i++)
					{
						RI2[i] = 0.0;
					}

					T1 = clock();

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						pi1 = pZ->index;
						pf1 = pZ->intersection;

						sit = 0.0;
						for (k = 0; k < index2; k++)
						{
							sit += ((*pf1) * RI1[*pi1]);

							pi1++;
							pf1++;
						}

						if (sit > 0.0)
						{
							Aux1 = (S[index1] / sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += ((*pf1) * RI1[*pi1] * Aux1);
								pi1++;
								pf1++;
							}
						}
						else
						{
							if (index2 > 0)
							{
								Aux1 = (S[index1] / pZ->sumofintersections);

								pi1 = pZ->index;
								pf1 = pZ->intersection;
								for (k = 0; k < index2; k++)
								{
									RI2[*pi1] += ((*pf1) * Aux1);
									pi1++;
									pf1++;
								}
							}
						}
					}

					T2 = clock();

					t1 = clock();

					unsigned int ui1 = 0;

					while ((*g_TargetValue) == 0)
					{
						WaitOnAddress(g_TargetValue, &ui1, sizeof(unsigned int), INFINITE);
					}

					t2 = clock();

					cudaMemcpy(pri[0], PF, bytesDtH, cudaMemcpyDeviceToHost);

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];

					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					pF1 = pri[0];

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];
						RI1[aux1] = (pf1[aux1] + pF1[aux1]);

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RI1[aux1] / mO1[aux1]);
						}
					}

					if (LoadBalancing == true)
					{
						Aux1 = (((float)(T2 - T1)) / ((float)CLOCKS_PER_SEC));

						tGPU = (((float)(eGPU - bGPU)) / ((float)CLOCKS_PER_SEC));

						if (Aux1 > 0.0)
						{
							float x;

							x = (((((float)nrays) / ((float)(*WorkGPU))) * tGPU) / Aux1);

							if (x > 0.0)
							{
								x = (1.0 / x);

								(*WorkGPU) = (x * (unsigned int)(((float)(nIn1)) / (x + ((float)nT))));

								(*WorkGPU) = ((*WorkGPU) >= GpuThreads ? (*WorkGPU) : GpuThreads);

								(*WorkGPU) = ((*WorkGPU) <= er ? (*WorkGPU) : er);

								pf1 = (RI1 + (2 * nxny));

								(*pf1) = ((*WorkGPU) / GpuThreads);

								pf1++;

								(*pf1) = ((*WorkGPU) % GpuThreads);
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					If = clock();

					if (UPDATE == true)
					{
						res[NI - z] = (((float)(If - Ib)) / ((float)CLOCKS_PER_SEC));

						if (((*NofU) % 3) == 0)
						{
							ResetEvent(ghEvent5);

							for (i = 0; i < nxny; i++)
							{
								ri1[i] = RI1[i];
							}

							for (i = Already; i <= (NI - z); i++)
							{
								itv[ALREADY + i] = res[i];
							}

							Already = (NI - z + 1);
							nit = Already;

							InterlockedIncrement(NofU);
						}
					}

					InterlockedIncrement(currentIteration);

					if (z == NI)
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\n\r\ntime at iteration %5d: %23.10lf"), *currentIteration,res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\n\r\nfinished iteration  ---------->  %15d"), *currentIteration);
						}
					}
					else
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\ntime at iteration %5d: %23.10lf"),     *currentIteration,res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\nfinished iteration  ---------->  %15d"),     *currentIteration);
						}
					}

					if (((*nofu) % 2) == 0)
					{
						unsigned int x;

						x = (wcslen(oE) + wcslen(output1) + 1);
						oe = (TCHAR*)realloc(oe, x * sizeof(TCHAR));

						if (oe == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oe.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oe, x, TEXT(""));
						wcscat_s(oe, x, oE);
						wcscat_s(oe, x, output1);

						ResetEvent(ghEvent6);

						InterlockedIncrement(nofu);

						oE = (TCHAR*)realloc(oE, _CVTBUFSIZE * sizeof(TCHAR));

						if (oE == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
						X = _CVTBUFSIZE;
					}
					else
					{
						if ((wcslen(oE) + wcslen(output1)) >= X)
						{
							X = (wcslen(oE) + _CVTBUFSIZE);

							oE = (TCHAR*)realloc(oE, X * sizeof(TCHAR));

							if (oE == NULL)
							{
								MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
							}
						}

						wcscat_s(oE, X, output1);
					}

					if (LoadBalancing == true)
					{
						aux1 = ((nIn1 - (*WorkGPU)) / nT);
						J1 = ((*WorkGPU) + id * aux1);
						if (id < (nT - 1))
						{
							J2 = (J1 + aux1);
						}
						else
						{
							J2 = nIn1;
						}

						nrays = 0;
						for (i = J1; i < J2; i++)
						{
							rays[nrays] = iIn1[i];
							nrays++;
						}
					}
				}

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						for (i = 0; i < NI; i++)
						{
							ITV[ALREADY + i] = res[i];
						}

						NIT = NI;

						free(res);

						SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)2);
						InvalidateRect(hWndChildwindowC, NULL, true);
						UpdateWindow(hWndChildwindowC);
					}
				}

				if (NI > 0)
				{
					WaitForSingleObject(ghEvent6, INFINITE);
					ResetEvent(ghEvent6);

					int n = GetWindowTextLength(hWndEdit1);

					TCHAR *buffer = NULL;

					buffer = (TCHAR*)malloc((n + 1 + wcslen(oE)) * sizeof(TCHAR));

					GetWindowText(hWndEdit1, buffer, n + 1);

					wcscat_s(buffer, n + 1 + wcslen(oE), oE);

					SetWindowText(hWndEdit1, buffer);

					SCROLLINFO scr;
					scr.cbSize = sizeof(SCROLLINFO);
					scr.fMask = SIF_RANGE;
					GetScrollInfo(hWndEdit1, SB_VERT, &scr);
					SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

					free(buffer);

					free(oE);
					free(oe);
					oe = NULL;
				}
			}
			else
			{
				for (z = NI; z != 0; z--)
				{
					for (i = 0; i < nxny; i++)
					{
						RI2[i] = 0.0;
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						pi1 = pZ->index;
						pf1 = pZ->intersection;

						sit = 0.0;
						for (k = 0; k < index2; k++)
						{
							sit += ((*pf1) * RI1[*pi1]);

							pi1++;
							pf1++;
						}

						if (sit > 0.0)
						{
							Aux1 = (S[index1] / sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += ((*pf1) * RI1[*pi1] * Aux1);
								pi1++;
								pf1++;
							}
						}
						else
						{
							if (index2 > 0)
							{
								Aux1 = (S[index1] / pZ->sumofintersections);

								pi1 = pZ->index;
								pf1 = pZ->intersection;
								for (k = 0; k < index2; k++)
								{
									RI2[*pi1] += ((*pf1) * Aux1);
									pi1++;
									pf1++;
								}
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];

					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					pF1 = pri[0];

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];
						RI1[aux1] = (pf1[aux1] + pF1[aux1]);

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RI1[aux1] / mO1[aux1]);
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					if (LoadBalancing == true)
					{
						aux1 = ((nIn1 - (*WorkGPU)) / nT);
						J1 = ((*WorkGPU) + id * aux1);
						if (id < (nT - 1))
						{
							J2 = (J1 + aux1);
						}
						else
						{
							J2 = nIn1;
						}

						nrays = 0;
						for (i = J1; i < J2; i++)
						{
							rays[nrays] = iIn1[i];
							nrays++;
						}
					}
				}
			}
		}
		else
		{
			if (id == 0)
			{
				TCHAR output1[_CVTBUFSIZE];
				TCHAR *oE = NULL;
				unsigned int X;

				if (NI > 0)
				{
					oE = (TCHAR*)malloc(_CVTBUFSIZE * sizeof(TCHAR));
					swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
					X = _CVTBUFSIZE;
				}

				float *res = NULL;
				unsigned int Already;

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						res = (float*)malloc(NI * sizeof(float));

						Already = 0;
					}
				}

				clock_t Ib;
				clock_t If;

				for (z = NI; z != 0; z--)
				{
					Ib = clock();

					for (i = 0; i < nIn2; i++)
					{
						RI2[iIn2[i]] = 0.0;
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						pi1 = pZ->index;
						pf1 = pZ->intersection;

						sit = 0.0;
						for (k = 0; k < index2; k++)
						{
							sit += ((*pf1) * RI1[*pi1]);

							/*
							if (RI1[*pi1] == 0.0)
							{
								MessageBox(NULL, TEXT("element reaching 0.0"), TEXT("!"), MB_OK);
							}
							*/

							pi1++;
							pf1++;
						}

						if (sit > 0.0)
						{
							Aux1 = (S[index1] / sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += ((*pf1) * RI1[*pi1] * Aux1);
								pi1++;
								pf1++;
							}
						}
						else
						{
							/*
							MessageBox(NULL, TEXT("?"), TEXT("!"), MB_OK);
							*/

							if (index2 > 0)
							{
								Aux1 = (S[index1] / pZ->sumofintersections);

								pi1 = pZ->index;
								pf1 = pZ->intersection;
								for (k = 0; k < index2; k++)
								{
									RI2[*pi1] += ((*pf1) * Aux1);
									pi1++;
									pf1++;
								}
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];
					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (pf1[aux1] / mO1[aux1]);
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					If = clock();

					if (UPDATE == true)
					{
						res[NI - z] = (((float)(If - Ib)) / ((float)CLOCKS_PER_SEC));

						if (((*NofU) % 3) == 0)
						{
							ResetEvent(ghEvent5);

							for (i = 0; i < nxny; i++)
							{
								ri1[i] = RI1[i];
							}

							for (i = Already; i <= (NI - z); i++)
							{
								itv[ALREADY + i] = res[i];
							}

							Already = (NI - z + 1);
							nit = Already;

							InterlockedIncrement(NofU);
						}
					}

					InterlockedIncrement(currentIteration);

					if (z == NI)
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\n\r\ntime at iteration %5d: %23.10lf"), *currentIteration,res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\n\r\nfinished iteration  ---------->  %15d"), *currentIteration);
						}
					}
					else
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\ntime at iteration %5d: %23.10lf"), *currentIteration,res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\nfinished iteration  ---------->  %15d"),     *currentIteration);
						}
					}

					if (((*nofu) % 2) == 0)
					{
						unsigned int x;

						x = (wcslen(oE) + wcslen(output1) + 1);
						oe = (TCHAR*)realloc(oe, x * sizeof(TCHAR));

						if (oe == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oe.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oe, x, TEXT(""));
						wcscat_s(oe, x, oE);
						wcscat_s(oe, x, output1);

						ResetEvent(ghEvent6);

						InterlockedIncrement(nofu);

						oE = (TCHAR*)realloc(oE, _CVTBUFSIZE * sizeof(TCHAR));

						if (oE == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
						X = _CVTBUFSIZE;
					}
					else
					{
						if ((wcslen(oE) + wcslen(output1)) >= X)
						{
							X = (wcslen(oE) + _CVTBUFSIZE);

							oE = (TCHAR*)realloc(oE, X * sizeof(TCHAR));

							if (oE == NULL)
							{
								MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
							}
						}

						wcscat_s(oE, X, output1);
					}
				}

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						for (i = 0; i < NI; i++)
						{
							ITV[ALREADY + i] = res[i];
						}

						NIT = NI;

						free(res);

						SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)2);
						InvalidateRect(hWndChildwindowC, NULL, true);
						UpdateWindow(hWndChildwindowC);
					}
				}

				if (NI > 0)
				{
					WaitForSingleObject(ghEvent6, INFINITE);
					int n = GetWindowTextLength(hWndEdit1);

					TCHAR *buffer = NULL;

					buffer = (TCHAR*)malloc((n + 1 + wcslen(oE)) * sizeof(TCHAR));

					GetWindowText(hWndEdit1, buffer, n + 1);

					wcscat_s(buffer, n + 1 + wcslen(oE), oE);

					SetWindowText(hWndEdit1, buffer);

					SCROLLINFO scr;
					scr.cbSize = sizeof(SCROLLINFO);
					scr.fMask = SIF_RANGE;
					GetScrollInfo(hWndEdit1, SB_VERT, &scr);
					SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

					free(buffer);

					free(oE);
					free(oe);
					oe = NULL;
				}
			}
			else
			{
				for (z = NI; z != 0; z--)
				{
					for (i = 0; i < nIn2; i++)
					{
						RI2[iIn2[i]] = 0.0;
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						pi1 = pZ->index;
						pf1 = pZ->intersection;

						sit = 0.0;
						for (k = 0; k < index2; k++)
						{
							sit += ((*pf1) * RI1[*pi1]);

							/*
							if (RI1[*pi1] == 0.0)
							{
								MessageBox(NULL, TEXT("element reaching 0.0"), TEXT("!"), MB_OK);
							}
							*/

							pi1++;
							pf1++;
						}

						if (sit > 0.0)
						{
							Aux1 = (S[index1] / sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += ((*pf1) * RI1[*pi1] * Aux1);
								pi1++;
								pf1++;
							}
						}
						else
						{
							/*
							MessageBox(NULL, TEXT("!!"), TEXT("!"), MB_OK);
							*/

							if (index2 > 0)
							{
								Aux1 = (S[index1] / pZ->sumofintersections);

								pi1 = pZ->index;
								pf1 = pZ->intersection;
								for (k = 0; k < index2; k++)
								{
									RI2[*pi1] += ((*pf1) * Aux1);
									pi1++;
									pf1++;
								}
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];
					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];

							pf1[aux1] += pF1[aux1];
						}
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (pf1[aux1] / mO1[aux1]);
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
				}
			}
		}

		free(rays);
		free(in2);
	}

	InterlockedDecrement(busy + id);

	return 0;
}

DWORD WINAPI SART(LPVOID lpParam)
{
	unsigned int id = PtrToInt(lpParam);

	if (run == true)
	{
		INF *pZ;
		float sit;
		float *RI3;
		float *pF1;
		float Aux1;
		float *pf1;
		unsigned int i;
		unsigned int j;
		unsigned int k;
		unsigned int z;
		unsigned int J1;
		unsigned int J2;
		unsigned int i3;
		unsigned int i4;
		cudaError_t err;
		unsigned int Max;
		unsigned int nC2;
		unsigned int aux1;
		unsigned int aux2;
		unsigned int *pi1;
		unsigned int nrays;
		unsigned int index1;
		unsigned int index2;
		dim3 dimBlock(8, 8);
		unsigned int nxny = (nx * ny);

		/* b *************************************************************************** */

		bool noise = false;

		if (noise == true)
		{
			if (id == 0)
			{
				FILE *fn;
				float fv;
				if (fopen_s(&fn, "noise-0.002.txt", "r") == 0)
				{
					for (j = 0; j < nv; j++)
					{
						for (i = 0; i < nd; i++)
						{
							fscanf_s(fn, "%f", &fv);

							aux1 = (i * nv + j);

							S[aux1] = (S[aux1] + fv);
						}
					}
					fclose(fn);
				}
				else
				{
					MessageBox(NULL, TEXT("problem! at fn"), TEXT("!"), MB_OK);
				}
			}

			EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
		}

		/* e *************************************************************************** */

		float *pRi = (float*)malloc(nxny * sizeof(float));
		if (pRi == NULL)
		{
			MessageBox(NULL, TEXT("problem -> pRi.."), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}
		RIv[id] = pRi;

		pi1 = iIn2;
		for (i = 0; i < nIn2; i++)
		{
			pRi[*pi1] = 0.0;

			pi1++;
		}

		aux1 = (nIn1 / nT);
		J1 = (id * aux1);
		if (id < (nT - 1))
		{
			J2 = (J1 + aux1);
		}
		else
		{
			J2 = nIn1;
		}

		for (j = J1; j < J2; j++)
		{
			aux1 = iIn1[j];
			pZ = (Z + aux1);
			aux2 = pZ->count;

			if (aux2 > 0)
			{
				Aux1 = (S[aux1] / pZ->sumofintersections);

				pi1 = pZ->index;
				pf1 = pZ->intersection;
				for (k = 0; k < aux2; k++)
				{
					pRi[*pi1] += ((*pf1) * Aux1);

					pi1++;
					pf1++;
				}
			}
		}

		EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

		if (id == 0)
		{
			if (SMO == true)
			{
				InterlockedIncrement(Ready);
			}
		}

		aux1 = (nIn2 / nT);
		i3 = (id * aux1);
		if (id < (nT - 1))
		{
			i4 = (i3 + aux1);
		}
		else
		{
			i4 = nIn2;
		}

		for (k = 0; k < nT; k++)
		{
			pf1 = RIv[k];
			pi1 = (iIn2 + i3);
			for (i = i3; i < i4; i++)
			{
				RI1[*pi1] += pf1[*pi1];

				pi1++;
			}
		}

		pi1 = (iIn2 + i3);
		for (i = i3; i < i4; i++)
		{
			if (mO1[*pi1] > 0.0)
			{
				RI1[*pi1] /= mO1[*pi1];
			}

			pi1++;
		}

		if (UGC == true)
		{
			if (nT > 1)
			{
				EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
			}

			if (id == 0)
			{
				Max = Z[iIn1[0]].count;

				for (i = 1; i < nIn1; i++)
				{
					if (Z[iIn1[i]].count > Max)
					{
						Max = Z[iIn1[i]].count;
					}
				}

				MAX = Max;

				SetEvent(cudaEventG);

				while (WaitForSingleObject(cudaEventg, 20) != WAIT_OBJECT_0)
				{
					Sleep(20);
				}

				ResetEvent(cudaEventg);
			}
			else
			{
				SuspendThread(GetCurrentThread());
			}

			Max = MAX;

			if (er > 0)
			{
				if (id == 0)
				{
					err = cudaMalloc(&dRI1, (2 * nxny + 2) * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dRI1.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dindices, er * Max * sizeof(int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dindices.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dIntersections, er * Max * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dIntersections.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dCounts, er * sizeof(int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dCounts.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dSumsOfIntersections, er * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dSumsOfIntersections.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dS, er * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dS.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dparameters, 7 * sizeof(unsigned int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dparameters.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					unsigned int *parameters = (unsigned int*)malloc(7 * sizeof(unsigned int));
					if (parameters == NULL)
					{
						MessageBox(NULL, TEXT("Failed to allocate parameters.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					RI1 = (float*)realloc(RI1, (2 * nxny + 2) * sizeof(float));

					g_TargetValue = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);

					parameters[0] = nxny;
					parameters[1] = GpuThreads;
					RI1[2*nxny]   = ((*WorkGPU) / GpuThreads);
					RI1[2*nxny+1] = ((*WorkGPU) % GpuThreads);
					parameters[4] = Max;

					cudaDeviceProp cDP;
					cudaGetDeviceProperties(&cDP, GPUSelection);

					parameters[5] = cDP.major;
					parameters[6] = cDP.minor;
					parameters[2] = cDP.clockRate;

					err = cudaMemcpy(dparameters, parameters, 7 * sizeof(unsigned int), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy parameters from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					free(parameters);

					iTotalv = (unsigned int**)malloc(nT * sizeof(unsigned int*));
					fTotalv = (float**)malloc(nT * sizeof(float*));
					pri = (float**)malloc(nT * sizeof(float*));

					for (k = 0; k < nT; k++)
					{
						i = (k * (er / nT));
						if (k < (nT - 1))
						{
							aux1 = (i + er / nT);
						}
						else
						{
							aux1 = er;
						}

						iTotalv[k] = (unsigned int*)malloc((aux1 - i) * Max * sizeof(unsigned int));
						if (iTotalv[k] == NULL)
						{
							MessageBox(NULL, TEXT("problem -> iTotalv.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
						fTotalv[k] = (float*)malloc((aux1 - i) * Max * sizeof(float));
						if (fTotalv[k] == NULL)
						{
							MessageBox(NULL, TEXT("problem -> fTotalv.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
					}

					cudaStreamCreate(&stream);
				}

				if (nT > 1)
				{
					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
				}

				if (id == 0)
				{
					RI3 = (float*)malloc(nxny * sizeof(float));
					if (RI3 == NULL)
					{
						MessageBox(NULL, TEXT("problem -> RI3.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
					pri[0] = RI3;
				}

				aux1 = (er / nT);
				index1 = (id * aux1);
				if (id < (nT - 1))
				{
					index2 = (index1 + aux1);
				}
				else
				{
					index2 = er;
				}

				unsigned int *iTotal = iTotalv[id];

				k = 0;
				for (i = index1; i < index2; i++)
				{
					/*
					aux1 = Z[i].Count;

					pi1 = Z[i].ind1;
					for (j = 0; j < aux1; j++)
					{
						iTotal[k + j] = (*pi1);
						pi1++;
					}
					*/

					memcpy(iTotal + k, Z[iIn1[i]].index, Z[iIn1[i]].count * sizeof(unsigned int));

					k += Max;
				}

				err = cudaMemcpy(dindices + index1 * Max, iTotal, (index2 - index1) * Max * sizeof(unsigned int), cudaMemcpyHostToDevice);
				if (err != cudaSuccess)
				{
					MessageBox(NULL, TEXT("Failed to copy iTotal from host to device.."), TEXT("!"), MB_OK);
					Sleep(3000);
					exit(EXIT_FAILURE);
				}

				if (id == 0)
				{
					for (i = 0; i < er; i++)
					{
						iTotal[i] = Z[iIn1[i]].count;
					}

					err = cudaMemcpy(dCounts, iTotal, er * sizeof(unsigned int), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy iTotal from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
				}

				float *fTotal = fTotalv[id];

				k = 0;
				for (i = index1; i < index2; i++)
				{
					/*
					aux1 = Z[i].Count;

					pf1 = Z[i].Seg1;
					for (j = 0; j < aux1; j++)
					{
						fTotal[k + j] = (*pf1);
						pf1++;
					}
					*/

					memcpy(fTotal + k, Z[iIn1[i]].intersection, Z[iIn1[i]].count * sizeof(float));

					k += Max;
				}

				err = cudaMemcpy(dIntersections + index1 * Max, fTotal, (index2 - index1) * Max * sizeof(float), cudaMemcpyHostToDevice);
				if (err != cudaSuccess)
				{
					MessageBox(NULL, TEXT("Failed to copy fTotal from host to device.."), TEXT("!"), MB_OK);
					Sleep(3000);
					exit(EXIT_FAILURE);
				}

				if (id == 0)
				{
					for (i = 0; i < er; i++)
					{
						fTotal[i] = Z[iIn1[i]].sumofintersections;
					}

					err = cudaMemcpy(dSumsOfIntersections, fTotal, er * sizeof(float), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy fTotal from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					float *A = (float*)malloc(er * sizeof(float));

					for (i = 0; i < er; i++)
					{
						A[i] = S[iIn1[i]];
					}

					err = cudaMemcpy(dS, A, er * sizeof(float), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy s from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					free(A);
				}

				/*
				this synchronization is to wait for all threads to have copy done, and to ensure that RI1 is already constructed before being accessed in the iterations
				*/
				if (nT > 1)
				{
					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					if (id == 0)
					{
						for (i = 0; i < nT; i++)
						{
							free(iTotalv[i]);
						}
						free(iTotalv);

						for (i = 0; i < nT; i++)
						{
							free(fTotalv[i]);
						}
						free(fTotalv);
					}
				}
			}
		}

		float *RI2 = (float*)malloc(nxny * sizeof(float));
		if (RI2 == NULL)
		{
			MessageBox(NULL, TEXT("problem -> RI2.."), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}
		pRI[id] = RI2;

		if ((UGC == true) && (er > 0))
		{
			aux1 = ((nIn1 - (*WorkGPU)) / nT);
			J1 = ((*WorkGPU) + id * aux1);
			if (id < (nT - 1))
			{
				J2 = (J1 + aux1);
			}
			else
			{
				J2 = nIn1;
			}
		}
		else
		{
			aux1 = (nIn1 / nT);
			J1 = (id * aux1);
			if (id < (nT - 1))
			{
				J2 = (J1 + aux1);
			}
			else
			{
				J2 = nIn1;
			}
		}

		unsigned int *rays = (unsigned int*)malloc(nIn1 * sizeof(unsigned int));
		if (rays == NULL)
		{
			MessageBox(NULL, TEXT("problem -> rays.."), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}

		nrays = 0;
		for (i = J1; i < J2; i++)
		{
			rays[nrays] = iIn1[i];
			nrays++;
		}

		nC2 = (i4 - i3);

		unsigned int *in2 = (unsigned int*)malloc(nC2 * sizeof(unsigned int));
		if (in2 == NULL)
		{
			MessageBox(NULL, TEXT("problem -> in2 == NULL"), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}

		pi1 = (iIn2 + i3);
		for (i = i3; i < i4; i++)
		{
			in2[i - i3] = (*pi1);
			pi1++;
		}

		if ((UGC == true) && (er > 0))
		{
			if (id == 0)
			{
				TCHAR output1[_CVTBUFSIZE];
				TCHAR *oE = NULL;
				unsigned int X;

				if (NI > 0)
				{
					oE = (TCHAR*)malloc(_CVTBUFSIZE * sizeof(TCHAR));
					swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
					X = _CVTBUFSIZE;
				}

				float *res = NULL;
				unsigned int Already;

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						res = (float*)malloc(NI * sizeof(float));

						Already = 0;
					}

					oImage = 0.0;

					for (i = 0; i < nIn1; i++)
					{
						oImage += S[iIn1[i]];
					}
				}

				clock_t t1;
				clock_t t2;
				clock_t T1;
				clock_t T2;

				unsigned int bytesDtH = (nxny * sizeof(float));
				unsigned int bytesHtD = (2 * bytesDtH + 2 * sizeof(float));
				float *PF = (dRI1 + nxny);

				float tGPU;

				clock_t Ib;
				clock_t If;
				clock_t bGPU;

				for (z = NI; z != 0; z--)
				{
					Ib = clock();

					for (i = 0; i < nxny; i++)
					{
						RI1[nxny + i] = 0.0;
					}

					cudaMemcpy(dRI1, RI1, bytesHtD, cudaMemcpyHostToDevice);

					(*g_TargetValue) = 0;

					bGPU = clock();

					iterations_SART << <GpuThreads / 64, dimBlock, 0, stream >> > (dRI1, dindices, dIntersections, dCounts, dSumsOfIntersections, dS, dparameters);
					cudaStreamAddCallback(stream, MyCallback, NULL, 0);

					for (i = 0; i < nxny; i++)
					{
						RI2[i] = 0.0;
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						RIa[aux1] = RI1[aux1];
					}

					T1 = clock();

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						if (index2 > 0)
						{
							pi1 = pZ->index;
							pf1 = pZ->intersection;

							sit = 0.0;
							for (k = 0; k < index2; k++)
							{
								sit += (*pf1) * RI1[*pi1];

								/*
								if (RI1[*pi1] == 0.0)
								{
									MessageBox(NULL, TEXT("element reaching 0.0"), TEXT("!"), MB_OK);
								}
								*/

								pi1++;
								pf1++;
							}

							Aux1 = (S[index1] - sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += (((*pf1) / pZ->sumofintersections) * Aux1);
								pi1++;
								pf1++;
							}
						}
					}

					T2 = clock();

					t1 = clock();

					unsigned int ui1 = 0;

					while ((*g_TargetValue) == 0)
					{
						WaitOnAddress(g_TargetValue, &ui1, sizeof(unsigned int), INFINITE);
					}

					t2 = clock();

					cudaMemcpy(pri[0], PF, bytesDtH, cudaMemcpyDeviceToHost);

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
					
					pf1 = pRI[0];

					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					pF1 = pri[0];

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];
						RI1[aux1] = (pf1[aux1] + pF1[aux1]);

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RIa[aux1] + (RI1[aux1] / mO1[aux1]));
						}
					}

					if (LoadBalancing == true)
					{
						Aux1 = (((float)(T2 - T1)) / ((float)CLOCKS_PER_SEC));

						tGPU = (((float)(eGPU - bGPU)) / ((float)CLOCKS_PER_SEC));

						if (Aux1 > 0.0)
						{
							float x;

							x = (((((float)nrays) / ((float)(*WorkGPU))) * tGPU) / Aux1);

							if (x > 0.0)
							{
								x = (1.0 / x);

								(*WorkGPU) = (x * (unsigned int)(((float)(nIn1)) / (x + ((float)nT))));

								(*WorkGPU) = ((*WorkGPU) >= GpuThreads ? (*WorkGPU) : GpuThreads);

								(*WorkGPU) = ((*WorkGPU) <= er ? (*WorkGPU) : er);

						/*
FILE *f1;
if (fopen_s(&f1, "timings.txt", "a+") == 0)
{
fwprintf_s(f1,TEXT("id=%d,it:%d,T2=%d,T1=%d,eGPU=%d,bGPU=%d,%f,%f\n"),id,z,T2,T1,eGPU,bGPU,x,((float)(nIn1))/(x+1.0));
fclose(f1);
}
else
{
MessageBox(NULL, TEXT("problem! ..."), TEXT("!"), MB_OK);
}
						*/

								pf1 = (RI1 + (2 * nxny));

								(*pf1) = ((*WorkGPU) / GpuThreads);

								pf1++;

								(*pf1) = ((*WorkGPU) % GpuThreads);
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					If = clock();

					if (UPDATE == true)
					{
						res[NI - z] = (((float)(If - Ib)) / ((float)CLOCKS_PER_SEC));

						if (((*NofU) % 3) == 0)
						{
							ResetEvent(ghEvent5);

							for (i = 0; i < nxny; i++)
							{
								ri1[i] = RI1[i];
							}

							for (i = Already; i <= (NI - z); i++)
							{
								itv[ALREADY + i] = res[i];
							}

							Already = (NI - z + 1);
							nit = Already;

							InterlockedIncrement(NofU);
						}
					}

					InterlockedIncrement(currentIteration);

					if (z == NI)
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("time at iteration %5d: %23.10lf"), *currentIteration, res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("finished iteration  ---------->  %15d"), *currentIteration);
						}
					}
					else
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\ntime at iteration %5d: %23.10lf"), *currentIteration, res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\nfinished iteration  ---------->  %15d"), *currentIteration);
						}
					}

					if (((*nofu) % 2) == 0)
					{
						unsigned int x;

						x = (wcslen(oE) + wcslen(output1) + 1);
						oe = (TCHAR*)realloc(oe, x * sizeof(TCHAR));

						if (oe == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oe.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oe, x, TEXT(""));
						wcscat_s(oe, x, oE);
						wcscat_s(oe, x, output1);

						ResetEvent(ghEvent6);

						InterlockedIncrement(nofu);

						oE = (TCHAR*)realloc(oE, _CVTBUFSIZE * sizeof(TCHAR));

						if (oE == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
						X = _CVTBUFSIZE;
					}
					else
					{
						if ((wcslen(oE) + wcslen(output1)) >= X)
						{
							X = (wcslen(oE) + _CVTBUFSIZE);

							oE = (TCHAR*)realloc(oE, X * sizeof(TCHAR));

							if (oE == NULL)
							{
								MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
							}
						}

						wcscat_s(oE, X, output1);
					}

					if (LoadBalancing == true)
					{
						aux1 = ((nIn1 - (*WorkGPU)) / nT);
						J1 = ((*WorkGPU) + id * aux1);
						if (id < (nT - 1))
						{
							J2 = (J1 + aux1);
						}
						else
						{
							J2 = nIn1;
						}

						nrays = 0;
						for (i = J1; i < J2; i++)
						{
							rays[nrays] = iIn1[i];
							nrays++;
						}
					}
				}

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						for (i = 0; i < NI; i++)
						{
							ITV[ALREADY + i] = res[i];
						}

						NIT = NI;

						free(res);

						SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)2);
						InvalidateRect(hWndChildwindowC, NULL, true);
						UpdateWindow(hWndChildwindowC);
					}
				}

				if (NI > 0)
				{
					WaitForSingleObject(ghEvent6, INFINITE);
					ResetEvent(ghEvent6);

					int n = GetWindowTextLength(hWndEdit1);

					TCHAR *buffer = NULL;

					buffer = (TCHAR*)malloc((n + 1 + wcslen(oE)) * sizeof(TCHAR));

					GetWindowText(hWndEdit1, buffer, n + 1);

					wcscat_s(buffer, n + 1 + wcslen(oE), oE);

					SetWindowText(hWndEdit1, buffer);

					SCROLLINFO scr;
					scr.cbSize = sizeof(SCROLLINFO);
					scr.fMask = SIF_RANGE;
					GetScrollInfo(hWndEdit1, SB_VERT, &scr);
					SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

					free(buffer);

					free(oE);
					free(oe);
					oe = NULL;
				}
			}
			else
			{
				for (z = NI; z != 0; z--)
				{
					for (i = 0; i < nxny; i++)
					{
						RI2[i] = 0.0;
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						RIa[aux1] = RI1[aux1];
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						if (index2 > 0)
						{
							pi1 = pZ->index;
							pf1 = pZ->intersection;

							sit = 0.0;
							for (k = 0; k < index2; k++)
							{
								sit += (*pf1) * RI1[*pi1];

								/*
								if (RI1[*pi1] == 0.0)
								{
									MessageBox(NULL, TEXT("element reaching 0.0"), TEXT("!"), MB_OK);
								}
								*/

								pi1++;
								pf1++;
							}

							Aux1 = (S[index1] - sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += (((*pf1) / pZ->sumofintersections) * Aux1);
								pi1++;
								pf1++;
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];

					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					pF1 = pri[0];

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];
						RI1[aux1] = (pf1[aux1] + pF1[aux1]);

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RIa[aux1] + (RI1[aux1] / mO1[aux1]));
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					if (LoadBalancing == true)
					{
						aux1 = ((nIn1 - (*WorkGPU)) / nT);
						J1 = ((*WorkGPU) + id * aux1);
						if (id < (nT - 1))
						{
							J2 = (J1 + aux1);
						}
						else
						{
							J2 = nIn1;
						}

						nrays = 0;
						for (i = J1; i < J2; i++)
						{
							rays[nrays] = iIn1[i];
							nrays++;
						}
					}
				}
			}
		}
		else
		{
			if (id == 0)
			{
				TCHAR output1[_CVTBUFSIZE];
				TCHAR *oE = NULL;
				unsigned int X;

				if (NI > 0)
				{
					oE = (TCHAR*)malloc(_CVTBUFSIZE * sizeof(TCHAR));
					swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
					X = _CVTBUFSIZE;
				}

				float *res = NULL;
				unsigned int Already;

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						res = (float*)malloc(NI * sizeof(float));

						Already = 0;
					}

					oImage = 0.0;

					for (i = 0; i < nIn1; i++)
					{
						oImage += S[iIn1[i]];
					}
				}

				clock_t Ib;
				clock_t If;

				for (z = NI; z != 0; z--)
				{
					Ib = clock();

					for (i = 0; i < nIn2; i++)
					{
						RI2[iIn2[i]] = 0.0;
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						RIa[aux1] = RI1[aux1];
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						if (index2 > 0)
						{
							pi1 = pZ->index;
							pf1 = pZ->intersection;

							sit = 0.0;
							for (k = 0; k < index2; k++)
							{
								sit += (*pf1) * RI1[*pi1];

								/*
								if (RI1[*pi1] == 0.0)
								{
									MessageBox(NULL, TEXT("element reaching 0.0"), TEXT("!"), MB_OK);
								}
								*/

								pi1++;
								pf1++;
							}

							Aux1 = (S[index1] - sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += (((*pf1) / pZ->sumofintersections) * Aux1);
								pi1++;
								pf1++;
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];
					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RIa[aux1] + (pf1[aux1] / mO1[aux1]));
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					If = clock();

					if (UPDATE == true)
					{
						res[NI - z] = (((float)(If - Ib)) / ((float)CLOCKS_PER_SEC));

						if (((*NofU) % 3) == 0)
						{
							ResetEvent(ghEvent5);

							for (i = 0; i < nxny; i++)
							{
								ri1[i] = RI1[i];
							}

							for (i = Already; i <= (NI - z); i++)
							{
								itv[ALREADY + i] = res[i];
							}

							Already = (NI - z + 1);
							nit = Already;

							InterlockedIncrement(NofU);
						}
					}

					InterlockedIncrement(currentIteration);

					if (z == NI)
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("time at iteration %5d: %23.10lf"), *currentIteration, res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("finished iteration  ---------->  %15d"), *currentIteration);
						}
					}
					else
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\ntime at iteration %5d: %23.10lf"), *currentIteration, res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\nfinished iteration  ---------->  %15d"), *currentIteration);
						}
					}

					if (((*nofu) % 2) == 0)
					{
						unsigned int x;

						x = (wcslen(oE) + wcslen(output1) + 1);
						oe = (TCHAR*)realloc(oe, x * sizeof(TCHAR));

						if (oe == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oe.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oe, x, TEXT(""));
						wcscat_s(oe, x, oE);
						wcscat_s(oe, x, output1);

						ResetEvent(ghEvent6);

						InterlockedIncrement(nofu);

						oE = (TCHAR*)realloc(oE, _CVTBUFSIZE * sizeof(TCHAR));

						if (oE == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
						X = _CVTBUFSIZE;
					}
					else
					{
						if ((wcslen(oE) + wcslen(output1)) >= X)
						{
							X = (wcslen(oE) + _CVTBUFSIZE);

							oE = (TCHAR*)realloc(oE, X * sizeof(TCHAR));

							if (oE == NULL)
							{
								MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
							}
						}

						wcscat_s(oE, X, output1);
					}
				}

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						for (i = 0; i < NI; i++)
						{
							ITV[ALREADY + i] = res[i];
						}

						NIT = NI;

						free(res);

						SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)2);
						InvalidateRect(hWndChildwindowC, NULL, true);
						UpdateWindow(hWndChildwindowC);
					}
				}

				if (NI > 0)
				{
					WaitForSingleObject(ghEvent6, INFINITE);
					int n = GetWindowTextLength(hWndEdit1);

					TCHAR *buffer = NULL;

					buffer = (TCHAR*)malloc((n + 1 + wcslen(oE)) * sizeof(TCHAR));

					GetWindowText(hWndEdit1, buffer, n + 1);

					wcscat_s(buffer, n + 1 + wcslen(oE), oE);

					SetWindowText(hWndEdit1, buffer);

					SCROLLINFO scr;
					scr.cbSize = sizeof(SCROLLINFO);
					scr.fMask = SIF_RANGE;
					GetScrollInfo(hWndEdit1, SB_VERT, &scr);
					SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

					free(buffer);

					free(oE);
					free(oe);
					oe = NULL;
				}
			}
			else
			{
				for (z = NI; z != 0; z--)
				{
					for (i = 0; i < nIn2; i++)
					{
						RI2[iIn2[i]] = 0.0;
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						RIa[aux1] = RI1[aux1];
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						if (index2 > 0)
						{
							pi1 = pZ->index;
							pf1 = pZ->intersection;

							sit = 0.0;
							for (k = 0; k < index2; k++)
							{
								sit += (*pf1) * RI1[*pi1];

								/*
								if (RI1[*pi1] == 0.0)
								{
									MessageBox(NULL, TEXT("element reaching 0.0"), TEXT("!"), MB_OK);
								}
								*/

								pi1++;
								pf1++;
							}

							Aux1 = (S[index1] - sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								RI2[*pi1] += (((*pf1) / pZ->sumofintersections) * Aux1);
								pi1++;
								pf1++;
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];
					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];

							pf1[aux1] += pF1[aux1];
						}
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RIa[aux1] + (pf1[aux1] / mO1[aux1]));
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
				}
			}
		}

		free(rays);
		free(in2);
	}
	else
	{
		INF *pZ;
		float sit;
		float *RI3;
		float Aux1;
		float *pf1;
		float *pF1;
		unsigned int i;
		unsigned int k;
		unsigned int z;
		unsigned int J1;
		unsigned int J2;
		unsigned int i3;
		unsigned int i4;
		cudaError_t err;
		unsigned int Max;
		unsigned int nC2;
		unsigned int aux1;
		unsigned int *pi1;
		unsigned int nrays;
		dim3 dimBlock(8, 8);
		unsigned int index1;
		unsigned int index2;
		unsigned int nxny = (nx * ny);

		if (UGC == true)
		{
			if (nT > 1)
			{
				EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
			}

			if (id == 0)
			{
				Max = Z[iIn1[0]].count;

				for (i = 1; i < nIn1; i++)
				{
					if (Z[iIn1[i]].count > Max)
					{
						Max = Z[iIn1[i]].count;
					}
				}

				MAX = Max;

				SetEvent(cudaEventG);

				while (WaitForSingleObject(cudaEventg, 20) != WAIT_OBJECT_0)
				{
					Sleep(20);
				}

				ResetEvent(cudaEventg);
			}
			else
			{
				SuspendThread(GetCurrentThread());
			}

			Max = MAX;

			if (er > 0)
			{
				if (id == 0)
				{
					err = cudaMalloc(&dRI1, (2 * nxny + 2) * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dRI1.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dindices, er * Max * sizeof(int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dindices.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dIntersections, er * Max * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dIntersections.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dCounts, er * sizeof(int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dCounts.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dSumsOfIntersections, er * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dSumsOfIntersections.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dS, er * sizeof(float));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dS.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					err = cudaMalloc(&dparameters, 7 * sizeof(unsigned int));
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to allocate dparameters.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					unsigned int *parameters = (unsigned int*)malloc(7 * sizeof(unsigned int));
					if (parameters == NULL)
					{
						MessageBox(NULL, TEXT("Failed to allocate parameters.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					RI1 = (float*)realloc(RI1, (2 * nxny + 2) * sizeof(float));

					g_TargetValue = (unsigned int*)_aligned_malloc(sizeof(unsigned int), 32);

					parameters[0] = nxny;
					parameters[1] = GpuThreads;
					RI1[2 * nxny] = ((*WorkGPU) / GpuThreads);
					RI1[2 * nxny + 1] = ((*WorkGPU) % GpuThreads);
					parameters[4] = Max;

					cudaDeviceProp cDP;
					cudaGetDeviceProperties(&cDP, GPUSelection);

					parameters[5] = cDP.major;
					parameters[6] = cDP.minor;
					parameters[2] = cDP.clockRate;

					err = cudaMemcpy(dparameters, parameters, 7 * sizeof(unsigned int), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy parameters from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					free(parameters);

					iTotalv = (unsigned int**)malloc(nT * sizeof(unsigned int*));
					fTotalv = (float**)malloc(nT * sizeof(float*));
					pri = (float**)malloc(nT * sizeof(float*));

					unsigned int aux1;

					unsigned int k;
					unsigned int i;

					for (k = 0; k < nT; k++)
					{
						i = (k * (er / nT));
						if (k < (nT - 1))
						{
							aux1 = (i + er / nT);
						}
						else
						{
							aux1 = er;
						}

						iTotalv[k] = (unsigned int*)malloc((aux1 - i) * Max * sizeof(unsigned int));
						if (iTotalv[k] == NULL)
						{
							MessageBox(NULL, TEXT("problem -> iTotalv.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
						fTotalv[k] = (float*)malloc((aux1 - i) * Max * sizeof(float));
						if (fTotalv[k] == NULL)
						{
							MessageBox(NULL, TEXT("problem -> fTotalv.."), TEXT("!"), MB_OK);
							Sleep(3000);
							exit(EXIT_FAILURE);
						}
					}

					cudaStreamCreate(&stream);
				}

				if (nT > 1)
				{
					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
				}

				if (id == 0)
				{
					RI3 = (float*)malloc(nxny * sizeof(float));
					if (RI3 == NULL)
					{
						MessageBox(NULL, TEXT("problem -> RI3.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
					pri[0] = RI3;
				}

				aux1 = (er / nT);
				index1 = (id * aux1);
				if (id < (nT - 1))
				{
					index2 = (index1 + aux1);
				}
				else
				{
					index2 = er;
				}

				unsigned int *iTotal = iTotalv[id];

				k = 0;
				for (i = index1; i < index2; i++)
				{
					/*
					aux1 = Z[i].Count;

					pi1 = Z[i].ind1;
					for (j = 0; j < aux1; j++)
					{
						iTotal[k + j] = (*pi1);
						pi1++;
					}
					*/

					memcpy(iTotal + k, Z[iIn1[i]].index, Z[iIn1[i]].count * sizeof(unsigned int));

					k += Max;
				}

				err = cudaMemcpy(dindices + index1 * Max, iTotal, (index2 - index1) * Max * sizeof(unsigned int), cudaMemcpyHostToDevice);
				if (err != cudaSuccess)
				{
					MessageBox(NULL, TEXT("Failed to copy iTotal from host to device.."), TEXT("!"), MB_OK);
					Sleep(3000);
					exit(EXIT_FAILURE);
				}

				if (id == 0)
				{
					for (i = 0; i < er; i++)
					{
						iTotal[i] = Z[iIn1[i]].count;
					}

					err = cudaMemcpy(dCounts, iTotal, er * sizeof(unsigned int), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy iTotal from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}
				}

				float *fTotal = fTotalv[id];

				k = 0;
				for (i = index1; i < index2; i++)
				{
					/*
					aux1 = Z[i].Count;

					pf1 = Z[i].Seg1;
					for (j = 0; j < aux1; j++)
					{
						fTotal[k + j] = (*pf1);
						pf1++;
					}
					*/

					memcpy(fTotal + k, Z[iIn1[i]].intersection, Z[iIn1[i]].count * sizeof(float));

					k += Max;
				}

				err = cudaMemcpy(dIntersections + index1 * Max, fTotal, (index2 - index1) * Max * sizeof(float), cudaMemcpyHostToDevice);
				if (err != cudaSuccess)
				{
					MessageBox(NULL, TEXT("Failed to copy fTotal from host to device.."), TEXT("!"), MB_OK);
					Sleep(3000);
					exit(EXIT_FAILURE);
				}

				if (id == 0)
				{
					for (i = 0; i < er; i++)
					{
						fTotal[i] = Z[iIn1[i]].sumofintersections;
					}

					err = cudaMemcpy(dSumsOfIntersections, fTotal, er * sizeof(float), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy fTotal from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					float *A = (float*)malloc(er * sizeof(float));

					for (i = 0; i < er; i++)
					{
						A[i] = S[iIn1[i]];
					}

					err = cudaMemcpy(dS, A, er * sizeof(float), cudaMemcpyHostToDevice);
					if (err != cudaSuccess)
					{
						MessageBox(NULL, TEXT("Failed to copy s from host to device.."), TEXT("!"), MB_OK);
						Sleep(3000);
						exit(EXIT_FAILURE);
					}

					free(A);
				}

				/*
this synchronization is to wait for all threads to have copy done, and to ensure that RI1 is already constructed before being accessed in the iterations
				*/
				if (nT > 1)
				{
					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					if (id == 0)
					{
						for (i = 0; i < nT; i++)
						{
							free(iTotalv[i]);
						}
						free(iTotalv);

						for (i = 0; i < nT; i++)
						{
							free(fTotalv[i]);
						}
						free(fTotalv);
					}
				}
			}
		}

		float *RI2 = (float*)malloc(nxny * sizeof(float));
		if (RI2 == NULL)
		{
			MessageBox(NULL, TEXT("problem -> RI2.."), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}
		pRI[id] = RI2;

		if ((UGC == true) && (er > 0))
		{
			aux1 = ((nIn1 - (*WorkGPU)) / nT);
			J1 = ((*WorkGPU) + id * aux1);
			if (id < (nT - 1))
			{
				J2 = (J1 + aux1);
			}
			else
			{
				J2 = nIn1;
			}
		}
		else
		{
			aux1 = (nIn1 / nT);
			J1 = (id * aux1);
			if (id < (nT - 1))
			{
				J2 = (J1 + aux1);
			}
			else
			{
				J2 = nIn1;
			}
		}

		unsigned int *rays = (unsigned int*)malloc(nIn1 * sizeof(unsigned int));
		if (rays == NULL)
		{
			MessageBox(NULL, TEXT("problem -> rays.."), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}

		nrays = 0;
		for (i = J1; i < J2; i++)
		{
			rays[nrays] = iIn1[i];
			nrays++;
		}

		aux1 = (nIn2 / nT);
		i3 = (id * aux1);
		if (id < (nT - 1))
		{
			i4 = (i3 + aux1);
		}
		else
		{
			i4 = nIn2;
		}

		nC2 = (i4 - i3);

		unsigned int *in2 = (unsigned int*)malloc(nC2 * sizeof(unsigned int));
		if (in2 == NULL)
		{
			MessageBox(NULL, TEXT("problem -> in2 == NULL"), TEXT("!"), MB_OK);
			Sleep(3000);
			exit(EXIT_FAILURE);
		}

		pi1 = (iIn2 + i3);
		for (i = i3; i < i4; i++)
		{
			in2[i - i3] = (*pi1);
			pi1++;
		}

		if ((UGC == true) && (er > 0))
		{
			if (id == 0)
			{
				TCHAR output1[_CVTBUFSIZE];
				TCHAR *oE = NULL;
				unsigned int X;

				if (NI > 0)
				{
					oE = (TCHAR*)malloc(_CVTBUFSIZE * sizeof(TCHAR));
					swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
					X = _CVTBUFSIZE;
				}

				float *res = NULL;
				unsigned int Already;

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						res = (float*)malloc(NI * sizeof(float));

						Already = 0;
					}
				}

				clock_t t1;
				clock_t t2;
				clock_t T1;
				clock_t T2;

				unsigned int bytesDtH = (nxny * sizeof(float));
				unsigned int bytesHtD = (2 * bytesDtH + 2 * sizeof(float));
				float *PF = (dRI1 + nxny);

				float tGPU;

				clock_t Ib;
				clock_t If;
				clock_t bGPU;

				for (z = NI; z != 0; z--)
				{
					Ib = clock();

					for (i = 0; i < nxny; i++)
					{
						RI1[nxny + i] = 0.0;
					}

					cudaMemcpy(dRI1, RI1, bytesHtD, cudaMemcpyHostToDevice);

					(*g_TargetValue) = 0;

					bGPU = clock();

					iterations_SART << <GpuThreads / 64, dimBlock, 0, stream >> > (dRI1, dindices, dIntersections, dCounts, dSumsOfIntersections, dS, dparameters);
					cudaStreamAddCallback(stream, MyCallback, NULL, 0);

					for (i = 0; i < nxny; i++)
					{
						RI2[i] = 0.0;
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						RIa[aux1] = RI1[aux1];
					}

					T1 = clock();

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						if (index2 > 0)
						{
							pi1 = pZ->index;
							pf1 = pZ->intersection;

							sit = 0.0;
							for (k = 0; k < index2; k++)
							{
								sit += (*pf1) * RI1[*pi1];

								pi1++;
								pf1++;
							}

							Aux1 = (S[index1] - sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								pRI[id][*pi1] += ((*pf1) / pZ->sumofintersections) * Aux1;
								pi1++;
								pf1++;
							}
						}
					}

					T2 = clock();

					t1 = clock();

					unsigned int ui1 = 0;

					while ((*g_TargetValue) == 0)
					{
						WaitOnAddress(g_TargetValue, &ui1, sizeof(unsigned int), INFINITE);
					}

					t2 = clock();

					cudaMemcpy(pri[0], PF, bytesDtH, cudaMemcpyDeviceToHost);

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];

					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					pF1 = pri[0];

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];
						RI1[aux1] = (pf1[aux1] + pF1[aux1]);

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RIa[aux1] + (RI1[aux1] / mO1[aux1]));
						}
					}

					if (LoadBalancing == true)
					{
						Aux1 = (((float)(T2 - T1)) / ((float)CLOCKS_PER_SEC));

						tGPU = (((float)(eGPU - bGPU)) / ((float)CLOCKS_PER_SEC));

						if (Aux1 > 0.0)
						{
							float x;

							x = (((((float)nrays) / ((float)(*WorkGPU))) * tGPU) / Aux1);

							if (x > 0.0)
							{
								x = (1.0 / x);

								(*WorkGPU) = (x * (unsigned int)(((float)(nIn1)) / (x + ((float)nT))));

								(*WorkGPU) = ((*WorkGPU) >= GpuThreads ? (*WorkGPU) : GpuThreads);

								(*WorkGPU) = ((*WorkGPU) <= er ? (*WorkGPU) : er);

								pf1 = (RI1 + (2 * nxny));

								(*pf1) = ((*WorkGPU) / GpuThreads);

								pf1++;

								(*pf1) = ((*WorkGPU) % GpuThreads);
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					If = clock();

					if (UPDATE == true)
					{
						res[NI - z] = (((float)(If - Ib)) / ((float)CLOCKS_PER_SEC));

						if (((*NofU) % 3) == 0)
						{
							ResetEvent(ghEvent5);

							for (i = 0; i < nxny; i++)
							{
								ri1[i] = RI1[i];
							}

							for (i = Already; i <= (NI - z); i++)
							{
								itv[ALREADY + i] = res[i];
							}

							Already = (NI - z + 1);
							nit = Already;

							InterlockedIncrement(NofU);
						}
					}

					InterlockedIncrement(currentIteration);

					if (z == NI)
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\n\r\ntime at iteration %5d: %23.10lf"), *currentIteration, res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\n\r\nfinished iteration  ---------->  %15d"), *currentIteration);
						}
					}
					else
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\ntime at iteration %5d: %23.10lf"), *currentIteration, res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\nfinished iteration  ---------->  %15d"), *currentIteration);
						}
					}

					if (((*nofu) % 2) == 0)
					{
						unsigned int x;

						x = (wcslen(oE) + wcslen(output1) + 1);
						oe = (TCHAR*)realloc(oe, x * sizeof(TCHAR));

						if (oe == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oe.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oe, x, TEXT(""));
						wcscat_s(oe, x, oE);
						wcscat_s(oe, x, output1);

						ResetEvent(ghEvent6);

						InterlockedIncrement(nofu);

						oE = (TCHAR*)realloc(oE, _CVTBUFSIZE * sizeof(TCHAR));

						if (oE == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
						X = _CVTBUFSIZE;
					}
					else
					{
						if ((wcslen(oE) + wcslen(output1)) >= X)
						{
							X = (wcslen(oE) + _CVTBUFSIZE);

							oE = (TCHAR*)realloc(oE, X * sizeof(TCHAR));

							if (oE == NULL)
							{
								MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
							}
						}

						wcscat_s(oE, X, output1);
					}

					if (LoadBalancing == true)
					{
						aux1 = ((nIn1 - (*WorkGPU)) / nT);
						J1 = ((*WorkGPU) + id * aux1);
						if (id < (nT - 1))
						{
							J2 = (J1 + aux1);
						}
						else
						{
							J2 = nIn1;
						}

						nrays = 0;
						for (i = J1; i < J2; i++)
						{
							rays[nrays] = iIn1[i];
							nrays++;
						}
					}
				}

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						for (i = 0; i < NI; i++)
						{
							ITV[ALREADY + i] = res[i];
						}

						NIT = NI;

						free(res);

						SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)2);
						InvalidateRect(hWndChildwindowC, NULL, true);
						UpdateWindow(hWndChildwindowC);
					}
				}

				if (NI > 0)
				{
					WaitForSingleObject(ghEvent6, INFINITE);
					ResetEvent(ghEvent6);

					int n = GetWindowTextLength(hWndEdit1);

					TCHAR *buffer = NULL;

					buffer = (TCHAR*)malloc((n + 1 + wcslen(oE)) * sizeof(TCHAR));

					GetWindowText(hWndEdit1, buffer, n + 1);

					wcscat_s(buffer, n + 1 + wcslen(oE), oE);

					SetWindowText(hWndEdit1, buffer);

					SCROLLINFO scr;
					scr.cbSize = sizeof(SCROLLINFO);
					scr.fMask = SIF_RANGE;
					GetScrollInfo(hWndEdit1, SB_VERT, &scr);
					SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

					free(buffer);

					free(oE);
					free(oe);
					oe = NULL;
				}
			}
			else
			{
				for (z = NI; z != 0; z--)
				{
					for (i = 0; i < nxny; i++)
					{
						RI2[i] = 0.0;
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						RIa[aux1] = RI1[aux1];
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						if (index2 > 0)
						{
							pi1 = pZ->index;
							pf1 = pZ->intersection;

							sit = 0.0;
							for (k = 0; k < index2; k++)
							{
								sit += (*pf1) * RI1[*pi1];

								pi1++;
								pf1++;
							}

							Aux1 = (S[index1] - sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								pRI[id][*pi1] += ((*pf1) / pZ->sumofintersections) * Aux1;
								pi1++;
								pf1++;
							}
						}
					}

					if (LoadBalancing == true)
					{
						aux1 = ((nIn1 - (*WorkGPU)) / nT);
						J1 = ((*WorkGPU) + id * aux1);
						if (id < (nT - 1))
						{
							J2 = (J1 + aux1);
						}
						else
						{
							J2 = nIn1;
						}

						nrays = 0;
						for (i = J1; i < J2; i++)
						{
							rays[nrays] = iIn1[i];
							nrays++;
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];

					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					pF1 = pri[0];

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];
						RI1[aux1] = (pf1[aux1] + pF1[aux1]);

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RIa[aux1] + (RI1[aux1] / mO1[aux1]));
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
				}
			}
		}
		else
		{
			if (id == 0)
			{
				TCHAR output1[_CVTBUFSIZE];
				TCHAR *oE = NULL;
				unsigned int X;

				if (NI > 0)
				{
					oE = (TCHAR*)malloc(_CVTBUFSIZE * sizeof(TCHAR));
					swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
					X = _CVTBUFSIZE;
				}

				float *res = NULL;
				unsigned int Already;

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						res = (float*)malloc(NI * sizeof(float));

						Already = 0;
					}
				}

				clock_t Ib;
				clock_t If;

				for (z = NI; z != 0; z--)
				{
					Ib = clock();

					for (i = 0; i < nIn2; i++)
					{
						RI2[iIn2[i]] = 0.0;
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						RIa[aux1] = RI1[aux1];
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						if (index2 > 0)
						{
							pi1 = pZ->index;
							pf1 = pZ->intersection;

							sit = 0.0;
							for (k = 0; k < index2; k++)
							{
								sit += (*pf1) * RI1[*pi1];

								pi1++;
								pf1++;
							}

							Aux1 = (S[index1] - sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								pRI[id][*pi1] += ((*pf1) / pZ->sumofintersections) * Aux1;
								pi1++;
								pf1++;
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];
					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];
							pf1[aux1] += pF1[aux1];
						}
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RIa[aux1] + (pf1[aux1] / mO1[aux1]));
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					If = clock();

					if (UPDATE == true)
					{
						res[NI - z] = (((float)(If - Ib)) / ((float)CLOCKS_PER_SEC));

						if (((*NofU) % 3) == 0)
						{
							ResetEvent(ghEvent5);

							for (i = 0; i < nxny; i++)
							{
								ri1[i] = RI1[i];
							}

							for (i = Already; i <= (NI - z); i++)
							{
								itv[ALREADY + i] = res[i];
							}

							Already = (NI - z + 1);
							nit = Already;

							InterlockedIncrement(NofU);
						}
					}

					InterlockedIncrement(currentIteration);

					if (z == NI)
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\n\r\ntime at iteration %5d: %23.10lf"), *currentIteration, res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\n\r\nfinished iteration  ---------->  %15d"), *currentIteration);
						}
					}
					else
					{
						if (UPDATE == true)
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\ntime at iteration %5d: %23.10lf"), *currentIteration, res[NI - z]);
						}
						else
						{
							swprintf_s(output1, _CVTBUFSIZE, TEXT("\r\nfinished iteration  ---------->  %15d"), *currentIteration);
						}
					}

					if (((*nofu) % 2) == 0)
					{
						unsigned int x;

						x = (wcslen(oE) + wcslen(output1) + 1);
						oe = (TCHAR*)realloc(oe, x * sizeof(TCHAR));

						if (oe == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oe.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oe, x, TEXT(""));
						wcscat_s(oe, x, oE);
						wcscat_s(oe, x, output1);

						ResetEvent(ghEvent6);

						InterlockedIncrement(nofu);

						oE = (TCHAR*)realloc(oE, _CVTBUFSIZE * sizeof(TCHAR));

						if (oE == NULL)
						{
							MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
						}

						swprintf_s(oE, _CVTBUFSIZE, TEXT(""));
						X = _CVTBUFSIZE;
					}
					else
					{
						if ((wcslen(oE) + wcslen(output1)) >= X)
						{
							X = (wcslen(oE) + _CVTBUFSIZE);

							oE = (TCHAR*)realloc(oE, X * sizeof(TCHAR));

							if (oE == NULL)
							{
								MessageBox(NULL, TEXT("Problem at oE.."), TEXT("?"), MB_OK);
							}
						}

						wcscat_s(oE, X, output1);
					}
				}

				if (UPDATE == true)
				{
					if (NI > 0)
					{
						for (i = 0; i < NI; i++)
						{
							ITV[ALREADY + i] = res[i];
						}

						NIT = NI;

						free(res);

						SendMessage(hWndChildwindowC, WM_APP + 3, NULL, (LPARAM)2);
						InvalidateRect(hWndChildwindowC, NULL, true);
						UpdateWindow(hWndChildwindowC);
					}
				}

				if (NI > 0)
				{
					WaitForSingleObject(ghEvent6, INFINITE);
					int n = GetWindowTextLength(hWndEdit1);

					TCHAR *buffer = NULL;

					buffer = (TCHAR*)malloc((n + 1 + wcslen(oE)) * sizeof(TCHAR));

					GetWindowText(hWndEdit1, buffer, n + 1);

					wcscat_s(buffer, n + 1 + wcslen(oE), oE);

					SetWindowText(hWndEdit1, buffer);

					SCROLLINFO scr;
					scr.cbSize = sizeof(SCROLLINFO);
					scr.fMask = SIF_RANGE;
					GetScrollInfo(hWndEdit1, SB_VERT, &scr);
					SendMessage(hWndEdit1, EM_LINESCROLL, (WPARAM)0, (LPARAM)scr.nMax);

					free(buffer);

					free(oE);
					free(oe);
					oe = NULL;
				}
			}
			else
			{
				for (z = NI; z != 0; z--)
				{
					for (i = 0; i < nIn2; i++)
					{
						RI2[iIn2[i]] = 0.0;
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						RIa[aux1] = RI1[aux1];
					}

					for (i = 0; i < nrays; i++)
					{
						index1 = rays[i];
						pZ = (Z + index1);
						index2 = pZ->count;

						if (index2 > 0)
						{
							pi1 = pZ->index;
							pf1 = pZ->intersection;

							sit = 0.0;
							for (k = 0; k < index2; k++)
							{
								sit += (*pf1) * RI1[*pi1];

								pi1++;
								pf1++;
							}

							Aux1 = (S[index1] - sit);

							pi1 = pZ->index;
							pf1 = pZ->intersection;
							for (k = 0; k < index2; k++)
							{
								pRI[id][*pi1] += ((*pf1) / pZ->sumofintersections) * Aux1;
								pi1++;
								pf1++;
							}
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);

					pf1 = pRI[0];
					for (k = 1; k < nT; k++)
					{
						pF1 = pRI[k];
						for (i = 0; i < nC2; i++)
						{
							aux1 = in2[i];

							pf1[aux1] += pF1[aux1];
						}
					}

					for (i = 0; i < nC2; i++)
					{
						aux1 = in2[i];

						if (mO1[aux1] > 0.0)
						{
							RI1[aux1] = (RIa[aux1] + (pf1[aux1] / mO1[aux1]));
						}
					}

					EnterSynchronizationBarrier(&barrier, SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY);
				}
			}
		}

		free(rays);
		free(in2);
	}

	InterlockedDecrement(busy + id);
	
	return 0;
}

PBITMAPINFO CreateBitmapInfoStruct(HWND hwnd, HBITMAP hBmp)
{
	BITMAP       bmp;
	PBITMAPINFO pbmi;
	WORD    cClrBits;

	/*
	Retrieve the bitmap color format, width, and height
	*/

	if (!GetObject(hBmp, sizeof(BITMAP), (LPSTR)&bmp))
	{
		/*
		errhandler("GetObject", hwnd);
		*/
	}

	// Convert the color format to a count of bits.  
	cClrBits = (WORD)(bmp.bmPlanes * bmp.bmBitsPixel);
	if (cClrBits == 1)
	{
		cClrBits = 1;
	}
	else if (cClrBits <= 4)
	{
		cClrBits = 4;
	}
	else if (cClrBits <= 8)
	{
		cClrBits = 8;
	}
	else if (cClrBits <= 16)
	{
		cClrBits = 16;
	}
	else if (cClrBits <= 24)
	{
		cClrBits = 24;
	}
	else cClrBits = 32;

	/*
	Allocate memory for the BITMAPINFO structure. (This structure contains a BITMAPINFOHEADER structure and an array of RGBQUAD data structures.)
	*/

	if (cClrBits < 24)
	{
		pbmi = (PBITMAPINFO)LocalAlloc(LPTR, sizeof(BITMAPINFOHEADER) + sizeof(RGBQUAD) * (1 << cClrBits));
	}
	else
	{
		/*
		There is no RGBQUAD array for these formats: 24-bit-per-pixel or 32-bit-per-pixel
		*/

		pbmi = (PBITMAPINFO)LocalAlloc(LPTR, sizeof(BITMAPINFOHEADER));
	}

	/*
	Initialize the fields in the BITMAPINFO structure
	*/

	pbmi->bmiHeader.biSize     = sizeof(BITMAPINFOHEADER);
	pbmi->bmiHeader.biWidth    =              bmp.bmWidth;
	pbmi->bmiHeader.biHeight   =             bmp.bmHeight;
	pbmi->bmiHeader.biPlanes   =             bmp.bmPlanes;
	pbmi->bmiHeader.biBitCount =          bmp.bmBitsPixel;

	if (cClrBits < 24)
	{
		pbmi->bmiHeader.biClrUsed = (1 << cClrBits);
	}

	/*
	If the bitmap is not compressed, set the BI_RGB flag
	*/

	pbmi->bmiHeader.biCompression = BI_RGB;

	/*
	Compute the number of bytes in the array of color indices and store the result in biSizeImage; The width must be DWORD aligned unless the bitmap is RLE compressed
	*/

	pbmi->bmiHeader.biSizeImage = ((pbmi->bmiHeader.biWidth * cClrBits + 31) & ~31) / 8 * pbmi->bmiHeader.biHeight;
	
	/*
	Set biClrImportant to 0, indicating that all of the device colors are important. 
	*/

	pbmi->bmiHeader.biClrImportant = 0;

	return pbmi;
}

void CreateBMPFile(HWND hwnd, LPTSTR pszFile, PBITMAPINFO pbi, HBITMAP hBMP, HDC hDC)
{
	HANDLE hf;                  //                file handle  
	BITMAPFILEHEADER hdr;       //         bitmap file-header  
	PBITMAPINFOHEADER pbih;     //         bitmap info-header  
	LPBYTE lpBits;              //             memory pointer  

	/*
	DWORD dwTotal;              //       total count of bytes
	*/

	DWORD cb;                   // incremental count of bytes  
	BYTE *hp;                   //               byte pointer  
	DWORD dwTmp;

	pbih = (PBITMAPINFOHEADER)pbi;
	lpBits = (LPBYTE)GlobalAlloc(GMEM_FIXED, pbih->biSizeImage);

	if (!lpBits)
	{
		/*
		errhandler("GlobalAlloc", hwnd);
		*/
	}

	/*
	Retrieve the color table (RGBQUAD array) and the bits (array of palette indices) from the DIB
	*/

	if (!GetDIBits(hDC, hBMP, 0, (WORD)pbih->biHeight, lpBits, pbi, DIB_RGB_COLORS))
	{
		/*
		errhandler("GetDIBits", hwnd);
		*/
	}

	// Create the .BMP file.  
	hf = CreateFile(pszFile, GENERIC_READ | GENERIC_WRITE, (DWORD)0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, (HANDLE)NULL);
	if (hf == INVALID_HANDLE_VALUE)
	{
		/*
		errhandler("CreateFile", hwnd);
		*/
	}

	/*
	0x42 = "B" 0x4d = "M", and compute the size of the entire file
	*/

	hdr.bfType = 0x4d42;
	hdr.bfSize = (DWORD)(sizeof(BITMAPFILEHEADER) + pbih->biSize + pbih->biClrUsed * sizeof(RGBQUAD) + pbih->biSizeImage);
	hdr.bfReserved1 = 0;
	hdr.bfReserved2 = 0;

	/*
	Compute the offset to the array of color indices
	*/

	hdr.bfOffBits = (DWORD) sizeof(BITMAPFILEHEADER) + pbih->biSize + pbih->biClrUsed * sizeof(RGBQUAD);

	/*
	Copy the BITMAPFILEHEADER into the .BMP file
	*/

	if (!WriteFile(hf, (LPVOID)&hdr, sizeof(BITMAPFILEHEADER), (LPDWORD)&dwTmp, NULL))
	{
		/*
		errhandler("WriteFile", hwnd);
		*/
	}

	/*
	Copy the BITMAPINFOHEADER and RGBQUAD array into the file
	*/

	if (!WriteFile(hf, (LPVOID)pbih, sizeof(BITMAPINFOHEADER) + pbih->biClrUsed * sizeof(RGBQUAD), (LPDWORD)&dwTmp, (NULL)))
	{
		/*
		errhandler("WriteFile", hwnd);
		*/
	}

	/*
	Copy the array of color indices into the .BMP file
	*/

	cb = pbih->biSizeImage;

	/*
	dwTotal = cb;
	*/

	hp = lpBits;
	if (!WriteFile(hf, (LPSTR)hp, (int)cb, (LPDWORD)&dwTmp, NULL))
	{
		/*
		errhandler("WriteFile", hwnd);
		*/
	}

	/*
	Close the .BMP file
	*/

	if (!CloseHandle(hf))
	{
		/*
		errhandler("CloseHandle", hwnd);
		*/
	}

	/*
	Free memory
	*/

	GlobalFree((HGLOBAL)lpBits);
}
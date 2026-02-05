.class public Lcom/android/server/InputMethodManagerService;
.super Lcom/android/internal/view/IInputMethodManager$Stub;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputMethodManagerService$1;,
        Lcom/android/server/InputMethodManagerService$ClientState;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardBehavior;,
        Lcom/android/server/InputMethodManagerService$HardKeyboardListener;,
        Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;,
        Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;,
        Lcom/android/server/InputMethodManagerService$InputMethodFileManager;,
        Lcom/android/server/InputMethodManagerService$Lifecycle;,
        Lcom/android/server/InputMethodManagerService$LocalServiceImpl;,
        Lcom/android/server/InputMethodManagerService$MethodCallback;,
        Lcom/android/server/InputMethodManagerService$MyPackageMonitor;,
        Lcom/android/server/InputMethodManagerService$SessionState;,
        Lcom/android/server/InputMethodManagerService$SettingsObserver;,
        Lcom/android/server/InputMethodManagerService$StartInputHistory;,
        Lcom/android/server/InputMethodManagerService$StartInputInfo;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_INPUT_METHOD_PICKER:Ljava/lang/String; = "com.android.server.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

.field static final DEBUG:Z = false

.field static final DEBUG_RESTORE:Z = false

.field private static final IME_CONNECTION_BIND_FLAGS:I = 0x40800005

.field private static final IME_VISIBLE_BIND_FLAGS:I = 0x2c000001

.field static final MSG_ATTACH_TOKEN:I = 0x410

.field static final MSG_BIND_CLIENT:I = 0xbc2

.field static final MSG_BIND_INPUT:I = 0x3f2

.field static final MSG_CREATE_SESSION:I = 0x41a

.field static final MSG_HARD_KEYBOARD_SWITCH_CHANGED:I = 0xfa0

.field static final MSG_HIDE_CURRENT_INPUT_METHOD:I = 0x40b

.field static final MSG_HIDE_SOFT_INPUT:I = 0x406

.field static final MSG_REPORT_FULLSCREEN_MODE:I = 0xbe5

.field static final MSG_SET_ACTIVE:I = 0xbcc

.field static final MSG_SET_INTERACTIVE:I = 0xbd6

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0xbe0

.field static final MSG_SHOW_IM_CONFIG:I = 0x3

.field static final MSG_SHOW_IM_SUBTYPE_ENABLER:I = 0x2

.field static final MSG_SHOW_IM_SUBTYPE_PICKER:I = 0x1

.field static final MSG_SHOW_SOFT_INPUT:I = 0x3fc

.field static final MSG_START_INPUT:I = 0x7d0

.field static final MSG_SWITCH_IME:I = 0xbea

.field static final MSG_SYSTEM_UNLOCK_USER:I = 0x1388

.field static final MSG_UNBIND_CLIENT:I = 0xbb8

.field static final MSG_UNBIND_INPUT:I = 0x3e8

.field private static final NOT_A_SUBTYPE_ID:I = -0x1

.field static final SECURE_SUGGESTION_SPANS_MAX_SIZE:I = 0x14

.field static final TAG:Ljava/lang/String; = "InputMethodManagerService"

.field private static final TAG_TRY_SUPPRESSING_IME_SWITCHER:Ljava/lang/String; = "TrySuppressingImeSwitcher"

.field static final TIME_TO_RECONNECT:J = 0x1f4L

.field private static needFirstShowIME:Z


# instance fields
.field private mAccessibilityRequestingNoSoftKeyboard:Z

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBackDisposition:I

.field mBoundToMethod:Z

.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field mCurAttribute:Landroid/view/inputmethod/EditorInfo;

.field mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field private mCurClientInKeyguard:Z

.field mCurFocusedWindow:Landroid/os/IBinder;

.field mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

.field mCurFocusedWindowSoftInputMode:I

.field mCurId:Ljava/lang/String;

.field mCurInputContext:Lcom/android/internal/view/IInputContext;

.field mCurInputContextMissingMethods:I

.field mCurIntent:Landroid/content/Intent;

.field mCurMethod:Lcom/android/internal/view/IInputMethod;

.field mCurMethodId:Ljava/lang/String;

.field mCurSeq:I

.field mCurToken:Landroid/os/IBinder;

.field mCurUserActionNotificationSequenceNumber:I

.field private mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

.field private mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

.field final mHandler:Landroid/os/Handler;

.field private final mHardKeyboardBehavior:I

.field private final mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

.field final mHasFeature:Z

.field mHaveConnection:Z

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field private mImeSwitchPendingIntent:Landroid/app/PendingIntent;

.field mImeWindowVis:I

.field private mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field mInFullscreenMode:Z

.field mInputShown:Z

.field mIsInteractive:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field mLastBindTime:J

.field private mLastSystemLocales:Landroid/os/LocaleList;

.field final mMethodList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMethodMapUpdateCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation
.end field

.field private final mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

.field final mNoBinding:Lcom/android/internal/view/InputBindResult;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationShown:Z

.field final mRes:Landroid/content/res/Resources;

.field private final mSecureSuggestionSpans:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field final mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

.field private final mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field mShowExplicitlyRequested:Z

.field mShowForced:Z

.field private mShowImeWithHardKeyboard:Z

.field private mShowOngoingImeSwitcherForPhones:Z

.field mShowRequested:Z

.field private final mSlotIme:Ljava/lang/String;

.field private final mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation
.end field

.field private final mStartInputMap:Ljava/util/WeakHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mMethodMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/InputMethodManagerService$StartInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

.field private mSubtypeIds:[I

.field private mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

.field private final mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

.field private mSwitchingDialog:Landroid/app/AlertDialog;

.field private mSwitchingDialogTitleView:Landroid/view/View;

.field private mSwitchingDialogToken:Landroid/os/IBinder;

.field mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;

.field mVisibleBound:Z

.field final mVisibleConnection:Landroid/content/ServiceConnection;

.field final mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/InputMethodManagerService;)Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/InputMethodManagerService;)Landroid/content/pm/IPackageManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/InputMethodManagerService;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/InputMethodManagerService;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/InputMethodManagerService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/InputMethodManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/InputMethodManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/InputMethodManagerService;Landroid/os/IBinder;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 217
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/InputMethodManagerService;->needFirstShowIME:Z

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 1288
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodManager$Stub;-><init>()V

    .line 265
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    move-object v2, v1

    move-object v3, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    .line 272
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    .line 271
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    .line 279
    iput v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 282
    new-instance v0, Lcom/android/server/InputMethodManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$1;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    .line 289
    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    .line 515
    iput-boolean v7, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 517
    iput v6, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 519
    iput v6, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 541
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    .line 549
    new-instance v0, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/InputMethodManagerService;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    .line 610
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    .line 753
    new-instance v0, Lcom/android/server/InputMethodManagerService$StartInputHistory;

    invoke-direct {v0, v1}, Lcom/android/server/InputMethodManagerService$StartInputHistory;-><init>(Lcom/android/server/InputMethodManagerService$StartInputHistory;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    .line 1289
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1290
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1292
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1294
    new-instance v0, Lcom/android/server/InputMethodManagerService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/InputMethodManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    .line 1296
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1295
    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    .line 1297
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 1298
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    new-instance v2, Lcom/android/server/InputMethodManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$2;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-direct {v0, p1, v1, v2, v7}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1304
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1305
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1306
    new-instance v0, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$HardKeyboardListener;)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    .line 1307
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1308
    const-string/jumbo v1, "android.software.input_methods"

    .line 1307
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHasFeature:Z

    .line 1309
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const v1, 0x10405ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 1310
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1311
    const v1, 0x10e003f

    .line 1310
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    .line 1313
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1314
    const-string/jumbo v1, "android.allowDuringSetup"

    invoke-virtual {v0, v1, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1315
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1316
    const v1, 0x1060154

    .line 1315
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 1326
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1327
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1326
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1328
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mImeSwitchPendingIntent:Landroid/app/PendingIntent;

    .line 1330
    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1332
    iput-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    .line 1335
    :try_start_11b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_125
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_125} :catch_14f

    .line 1341
    :goto_125
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1342
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v6, v6, 0x1

    .line 1341
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1344
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1345
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v5}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1347
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1346
    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->createInstanceLocked(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    .line 1348
    return-void

    .line 1336
    :catch_14f
    move-exception v0

    .line 1337
    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    goto :goto_125
.end method

.method private bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 7

    .prologue
    .line 1560
    if-eqz p1, :cond_4

    if-nez p2, :cond_2b

    .line 1561
    :cond_4
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    const/4 v0, 0x0

    return v0

    .line 1564
    :cond_2b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1565
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 1564
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private calledFromValidUser()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1503
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1511
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_16

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1512
    :cond_16
    return v4

    .line 1520
    :cond_17
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1521
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1520
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23

    .line 1527
    return v4

    .line 1530
    :cond_23
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--- IPC called from background users. Ignore. callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1531
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    .line 1530
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    return v3
.end method

.method private calledWithValidToken(Landroid/os/IBinder;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1542
    if-nez p1, :cond_e

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 1547
    return v3

    .line 1549
    :cond_e
    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq p1, v0, :cond_54

    .line 1551
    :cond_14
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " due to an invalid token."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1552
    const-string/jumbo v2, " uid:"

    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1552
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1552
    const-string/jumbo v2, " token:"

    .line 1551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    return v3

    .line 1555
    :cond_54
    const/4 v0, 0x1

    return v0
.end method

.method private canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2890
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_f

    .line 2891
    return v3

    .line 2892
    :cond_f
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v1, :cond_24

    if-eqz p1, :cond_24

    .line 2893
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_24

    .line 2894
    return v3

    .line 2895
    :cond_24
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3b

    .line 2896
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 2898
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2895
    invoke-static {v1, v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2899
    return v3

    .line 2900
    :cond_3b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2901
    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 2900
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_47

    .line 2903
    return v3

    .line 2906
    :cond_47
    return v4
.end method

.method private chooseNewDefaultIMELocked()Z
    .registers 2

    .prologue
    .line 3512
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 3511
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v0

    .line 3513
    if-eqz v0, :cond_15

    .line 3517
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 3518
    const/4 v0, 0x1

    return v0

    .line 3521
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 4015
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 4021
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v1, v2

    move-object v3, v4

    move-object v5, v4

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4022
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    .line 4023
    if-eqz v1, :cond_33

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_33

    move v0, v1

    move-object v1, v3

    move-object v3, v5

    :goto_2f
    move-object v5, v3

    move-object v3, v1

    move v1, v0

    goto :goto_10

    .line 4028
    :cond_33
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8, v0, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 4030
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v6, :cond_a8

    .line 4032
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    .line 4031
    invoke-static {v6, v8, p1, v11, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 4036
    :goto_4b
    if-nez v6, :cond_53

    .line 4038
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 4037
    invoke-static {v6, v8, p1, v4, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 4041
    :cond_53
    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 4043
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_61

    .line 4044
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v8

    .line 4047
    :cond_61
    if-nez v6, :cond_73

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v11, :cond_73

    .line 4049
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    iget-object v11, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v11

    .line 4048
    invoke-static {v6, v8, p1, v11, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 4053
    :cond_73
    if-nez v6, :cond_7b

    .line 4055
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 4054
    invoke-static {v6, v8, p1, v4, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v6

    .line 4057
    :cond_7b
    if-eqz v6, :cond_a4

    .line 4058
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 4085
    :goto_85
    if-eqz v0, :cond_9f

    .line 4086
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 4063
    :cond_8d
    if-nez v1, :cond_a4

    .line 4067
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a0

    move-object v1, v6

    move-object v3, v0

    move v0, v7

    .line 4069
    goto :goto_2f

    .line 4088
    :cond_9f
    return-object v4

    :cond_a0
    move-object v3, v0

    move v0, v1

    move-object v1, v6

    goto :goto_2f

    :cond_a4
    move v0, v1

    move-object v1, v3

    move-object v3, v5

    goto :goto_2f

    :cond_a8
    move-object v6, v4

    goto :goto_4b

    :cond_aa
    move-object v6, v3

    move-object v0, v5

    goto :goto_85
.end method

.method private finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 2084
    if-eqz p1, :cond_19

    .line 2085
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_e

    .line 2087
    :try_start_7
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodSession;->finishSession()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_1a

    .line 2092
    :goto_c
    iput-object v3, p1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 2094
    :cond_e
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v0, :cond_19

    .line 2095
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2096
    iput-object v3, p1, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    .line 2099
    :cond_19
    return-void

    .line 2088
    :catch_1a
    move-exception v0

    .line 2089
    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Session failed to close due to remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2090
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    goto :goto_c
.end method

.method private getAppShowFlags()I
    .registers 3

    .prologue
    .line 1736
    const/4 v0, 0x0

    .line 1737
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_7

    .line 1738
    const/4 v0, 0x2

    .line 1742
    :cond_6
    :goto_6
    return v0

    .line 1739
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v1, :cond_6

    .line 1740
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4107
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 4108
    return-object v3

    .line 4110
    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isSubtypeSelected()Z

    move-result v1

    .line 4111
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4112
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v2

    if-nez v2, :cond_21

    .line 4113
    :cond_20
    return-object v3

    .line 4115
    :cond_21
    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v1, :cond_4b

    .line 4117
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    .line 4118
    const/4 v2, -0x1

    if-ne v1, v2, :cond_78

    .line 4123
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v0

    .line 4126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_5a

    .line 4127
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4142
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0

    .line 4116
    :cond_4b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 4115
    if-eqz v1, :cond_48

    goto :goto_27

    .line 4128
    :cond_5a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_48

    .line 4130
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 4131
    const-string/jumbo v2, "keyboard"

    .line 4129
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 4132
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v1, :cond_48

    .line 4134
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 4133
    invoke-static {v1, v0, v3, v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_48

    .line 4139
    :cond_78
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_48
.end method

.method private getImeShowFlags()I
    .registers 3

    .prologue
    .line 1725
    const/4 v0, 0x0

    .line 1726
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v1, :cond_7

    .line 1727
    const/4 v0, 0x3

    .line 1732
    :cond_6
    :goto_6
    return v0

    .line 1729
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-eqz v1, :cond_6

    .line 1730
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private handleSetInteractive(Z)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3471
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 3472
    :try_start_5
    iput-boolean p1, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    .line 3473
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz p1, :cond_38

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    :goto_d
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v4, v2, v5}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 3476
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v2, :cond_36

    .line 3477
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 3478
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v2, :cond_3a

    move v2, v0

    :goto_27
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    if-eqz v6, :cond_3c

    .line 3479
    :goto_2b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3478
    const/16 v6, 0xbcc

    .line 3477
    invoke-virtual {v5, v6, v2, v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_36
    .catchall {:try_start_5 .. :try_end_36} :catchall_3e

    :cond_36
    monitor-exit v3

    .line 3482
    return-void

    :cond_38
    move v2, v1

    .line 3473
    goto :goto_d

    :cond_3a
    move v2, v1

    .line 3478
    goto :goto_27

    :cond_3c
    move v0, v1

    goto :goto_2b

    .line 3471
    :catchall_3e
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private handleSwitchInputMethod(Z)V
    .registers 7

    .prologue
    .line 3485
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3486
    :try_start_3
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    .line 3487
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v4, 0x0

    .line 3486
    invoke-virtual {v2, v4, v0, v3, p1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_5b

    move-result-object v0

    .line 3488
    if-nez v0, :cond_1a

    monitor-exit v1

    .line 3489
    return-void

    .line 3491
    :cond_1a
    :try_start_1a
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 3492
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_5b

    .line 3493
    if-nez v0, :cond_33

    monitor-exit v1

    .line 3494
    return-void

    .line 3496
    :cond_33
    :try_start_33
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3497
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3496
    invoke-static {v2, v0, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 3499
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    if-nez v2, :cond_55

    .line 3500
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3501
    const/4 v3, 0x0

    .line 3500
    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    .line 3505
    :goto_4e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_53
    .catchall {:try_start_33 .. :try_end_53} :catchall_5b

    :cond_53
    monitor-exit v1

    .line 3508
    return-void

    .line 3503
    :cond_55
    :try_start_55
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeSwitchedByShortCutToast:Landroid/widget/Toast;

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_5b

    goto :goto_4e

    .line 3485
    :catchall_5b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static imeWindowStatusToString(I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 4434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4435
    const/4 v1, 0x1

    .line 4436
    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_28

    .line 4437
    const-string/jumbo v1, "Active"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4440
    :goto_11
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_23

    .line 4441
    if-nez v0, :cond_1d

    .line 4442
    const-string/jumbo v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4444
    :cond_1d
    const-string/jumbo v0, "Visible"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    :cond_23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    move v0, v1

    goto :goto_11
.end method

.method private isKeyguardLocked()Z
    .registers 2

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private isNeedIme(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1665
    sget-object v0, Lcom/android/internal/view/InputMethodClient;->systemAPPNeedIme:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isScreenLocked()Z
    .registers 2

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_13

    .line 3686
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 3685
    if-eqz v0, :cond_13

    .line 3686
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 3685
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private isStartInputMethod(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1656
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->isNeedIme(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1657
    return v1

    .line 1658
    :cond_8
    const/16 v0, 0xa

    if-ne p2, v0, :cond_d

    .line 1659
    return v1

    .line 1661
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method private isXTCLuncher()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1669
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1670
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 1671
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3b

    .line 1672
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xtc.i3launcher.module.home.view.activity.HomeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1674
    :cond_3b
    return v2
.end method

.method private notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 5

    .prologue
    .line 2468
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .line 2469
    if-eqz v0, :cond_d

    .line 2470
    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/input/InputManagerInternal;->onInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2472
    :cond_d
    return-void
.end method

.method private resetDefaultImeLocked(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1352
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    .line 1353
    return-void

    .line 1356
    :cond_18
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1355
    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1357
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1358
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "No default found"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    return-void

    .line 1361
    :cond_32
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1365
    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 1366
    return-void
.end method

.method private resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 3995
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3996
    const/4 v2, -0x1

    .line 3998
    if-eqz v0, :cond_28

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_47

    .line 3999
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastSubtypeForInputMethodLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4000
    if-eqz v3, :cond_47

    .line 4003
    :try_start_1b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4002
    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_22} :catch_2a

    move-result v1

    .line 4009
    :goto_23
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 4010
    return-void

    :cond_28
    move v1, v2

    .line 3998
    goto :goto_23

    .line 4004
    :catch_2a
    move-exception v1

    .line 4005
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HashCode for subtype looks broken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    goto :goto_23

    :cond_47
    move v1, v2

    goto :goto_23
.end method

.method static restoreEnabledInputMethods(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 907
    invoke-static {p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 909
    invoke-static {p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 912
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 913
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 914
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 915
    if-nez v2, :cond_33

    .line 916
    new-instance v2, Landroid/util/ArraySet;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    .line 917
    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    :cond_33
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_10

    .line 923
    :cond_3d
    invoke-static {v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 929
    const-string/jumbo v2, "enabled_input_methods"

    .line 928
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 930
    return-void
.end method

.method private setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6

    .prologue
    .line 3183
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3184
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 3186
    return-void

    .line 3183
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 3189
    if-nez p1, :cond_16

    .line 3190
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3191
    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    .line 3190
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_44

    .line 3193
    new-instance v0, Ljava/lang/SecurityException;

    .line 3194
    const-string/jumbo v1, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    .line 3193
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3197
    :cond_16
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_44

    .line 3198
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring setInputMethod of uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3199
    const-string/jumbo v2, " token: "

    .line 3198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    return-void

    .line 3203
    :cond_44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3205
    :try_start_48
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4f

    .line 3207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3209
    return-void

    .line 3206
    :catchall_4f
    move-exception v2

    .line 3207
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3206
    throw v2
.end method

.method private setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .registers 11

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3957
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->saveCurrentInputMethodAndSubtypeToHistory(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3960
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3959
    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 3966
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v0, :cond_33

    .line 3967
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 3969
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3968
    const/16 v4, 0xbe0

    .line 3967
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 3973
    :cond_33
    if-eqz p1, :cond_37

    if-gez p2, :cond_4c

    .line 3974
    :cond_37
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 3975
    iput-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3988
    :goto_3e
    if-nez p3, :cond_4b

    .line 3990
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    if-eqz p1, :cond_6e

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-virtual {v1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 3992
    :cond_4b
    return-void

    .line 3977
    :cond_4c
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v0

    if-ge p2, v0, :cond_62

    .line 3978
    invoke-virtual {p1, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 3979
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 3980
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_3e

    .line 3982
    :cond_62
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->putSelectedSubtype(I)V

    .line 3984
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    goto :goto_3e

    .line 3990
    :cond_6e
    const-string/jumbo v0, ""

    goto :goto_48
.end method

.method private shouldShowImeSwitcherLocked(I)Z
    .registers 16

    .prologue
    .line 2182
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 2183
    :cond_6
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    return v0

    .line 2184
    :cond_c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2185
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    .line 2184
    if-eqz v0, :cond_22

    .line 2185
    const/4 v0, 0x0

    return v0

    .line 2186
    :cond_22
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_28

    const/4 v0, 0x0

    return v0

    .line 2187
    :cond_28
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2188
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardBehavior:I

    if-nez v0, :cond_3c

    .line 2193
    const/4 v0, 0x1

    return v0

    .line 2195
    :cond_36
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3c

    .line 2196
    const/4 v0, 0x0

    return v0

    .line 2199
    :cond_3c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    .line 2200
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 2201
    const/4 v0, 0x2

    if-le v8, v0, :cond_4b

    const/4 v0, 0x1

    return v0

    .line 2202
    :cond_4b
    const/4 v0, 0x1

    if-ge v8, v0, :cond_50

    const/4 v0, 0x0

    return v0

    .line 2203
    :cond_50
    const/4 v4, 0x0

    .line 2204
    const/4 v3, 0x0

    .line 2205
    const/4 v2, 0x0

    .line 2206
    const/4 v1, 0x0

    .line 2207
    const/4 v0, 0x0

    move v6, v0

    :goto_56
    if-ge v6, v8, :cond_9a

    .line 2208
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2210
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v0, v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v9

    .line 2211
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 2212
    if-nez v10, :cond_73

    .line 2213
    add-int/lit8 v4, v4, 0x1

    .line 2207
    :cond_6f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_56

    .line 2215
    :cond_73
    const/4 v0, 0x0

    move v5, v0

    :goto_75
    if-ge v5, v10, :cond_6f

    .line 2216
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2217
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-nez v11, :cond_93

    .line 2218
    add-int/lit8 v2, v4, 0x1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    move v13, v3

    move v3, v2

    move v2, v13

    .line 2215
    :goto_8b
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_75

    .line 2221
    :cond_93
    add-int/lit8 v1, v3, 0x1

    move v3, v4

    move v12, v1

    move-object v1, v2

    move v2, v12

    .line 2222
    goto :goto_8b

    .line 2227
    :cond_9a
    const/4 v0, 0x1

    if-gt v4, v0, :cond_a0

    const/4 v0, 0x1

    if-le v3, v0, :cond_a2

    .line 2228
    :cond_a0
    const/4 v0, 0x1

    return v0

    .line 2229
    :cond_a2
    const/4 v0, 0x1

    if-ne v4, v0, :cond_d3

    const/4 v0, 0x1

    if-ne v3, v0, :cond_d3

    .line 2230
    if-eqz v2, :cond_d1

    if-eqz v1, :cond_d1

    .line 2231
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    .line 2232
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v0

    .line 2231
    if-nez v0, :cond_c6

    .line 2233
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v0

    .line 2230
    if-eqz v0, :cond_d1

    .line 2234
    :cond_c6
    const-string/jumbo v0, "TrySuppressingImeSwitcher"

    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v0

    .line 2230
    if-eqz v0, :cond_d1

    .line 2235
    const/4 v0, 0x0

    return v0

    .line 2237
    :cond_d1
    const/4 v0, 0x1

    return v0

    .line 2239
    :cond_d3
    const/4 v0, 0x0

    return v0
.end method

.method private showConfigureInputMethods()V
    .registers 5

    .prologue
    .line 3677
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3678
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3681
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3682
    return-void
.end method

.method private showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3662
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.INPUT_METHOD_SUBTYPE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3663
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3666
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 3667
    const-string/jumbo v1, "input_method_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3670
    :cond_19
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3671
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_2e

    move-result v2

    monitor-exit v1

    .line 3673
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 3674
    return-void

    .line 3670
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showInputMethodMenu(Z)V
    .registers 14

    .prologue
    const/4 v11, -0x1

    const/4 v3, 0x0

    .line 3692
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isScreenLocked()Z

    move-result v1

    .line 3694
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v5

    .line 3695
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, v5}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v0

    .line 3698
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 3700
    :try_start_15
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 3701
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3700
    invoke-virtual {v2, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getExplicitlyOrImplicitlyEnabledInputMethodsAndSubtypeListLocked(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    .line 3702
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_166

    move-result v2

    if-nez v2, :cond_27

    :cond_25
    monitor-exit v6

    .line 3703
    return-void

    .line 3706
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 3709
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeListLocked(ZZ)Ljava/util/List;

    move-result-object v7

    .line 3712
    if-ne v0, v11, :cond_16c

    .line 3713
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 3714
    if-eqz v1, :cond_16c

    .line 3715
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3717
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v1

    .line 3716
    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    move v4, v0

    .line 3721
    :goto_4b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 3722
    new-array v0, v8, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 3723
    new-array v0, v8, [I

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    move v2, v3

    move v1, v3

    .line 3725
    :goto_59
    if-ge v2, v8, :cond_8e

    .line 3726
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 3727
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v10, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v10, v9, v2

    .line 3728
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    aput v0, v9, v2

    .line 3729
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 3730
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSubtypeIds:[I

    aget v0, v0, v2

    .line 3731
    if-eq v0, v11, :cond_85

    .line 3732
    if-ne v4, v11, :cond_8a

    if-nez v0, :cond_8a

    :cond_85
    move v0, v2

    .line 3725
    :goto_86
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_59

    .line 3733
    :cond_8a
    if-eq v0, v4, :cond_85

    move v0, v1

    goto :goto_86

    .line 3739
    :cond_8e
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 3740
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    .line 3741
    const v4, 0x1030223

    .line 3739
    invoke-direct {v0, v2, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 3743
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 3744
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/server/InputMethodManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/InputMethodManagerService$3;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 3751
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3753
    sget-object v0, Lcom/android/internal/R$styleable;->DialogPreference:[I

    .line 3752
    const/4 v4, 0x0

    .line 3754
    const v5, 0x101005d

    const/4 v8, 0x0

    .line 3752
    invoke-virtual {v2, v4, v0, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3756
    const/4 v4, 0x2

    .line 3755
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3757
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3759
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 3761
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 3763
    const v4, 0x109007a

    const/4 v5, 0x0

    .line 3762
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3764
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 3767
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 3768
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 3769
    const v4, 0x102028c

    .line 3768
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 3770
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->isHardKeyboardAvailable()Z

    move-result v0

    if-eqz v0, :cond_163

    move v0, v3

    .line 3768
    :goto_f6
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3772
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 3773
    const v3, 0x102028d

    .line 3772
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 3774
    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3775
    new-instance v3, Lcom/android/server/InputMethodManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/InputMethodManagerService$4;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3785
    new-instance v0, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;

    .line 3786
    const v3, 0x109007b

    .line 3785
    invoke-direct {v0, v2, v3, v7, v1}, Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;I)V

    .line 3787
    new-instance v2, Lcom/android/server/InputMethodManagerService$5;

    invoke-direct {v2, p0, v0}, Lcom/android/server/InputMethodManagerService$5;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/server/InputMethodManagerService$ImeSubtypeListAdapter;)V

    .line 3809
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3811
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 3812
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3813
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3814
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 3815
    const/16 v2, 0x7dc

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 3819
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogToken:Landroid/os/IBinder;

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 3820
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3821
    const-string/jumbo v2, "Select input method"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 3822
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 3823
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUi(Landroid/os/IBinder;II)V

    .line 3824
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_161
    .catchall {:try_start_27 .. :try_end_161} :catchall_166

    monitor-exit v6

    .line 3826
    return-void

    .line 3771
    :cond_163
    const/16 v0, 0x8

    goto :goto_f6

    .line 3698
    :catchall_166
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_169
    move v0, v1

    goto/16 :goto_86

    :cond_16c
    move v4, v0

    goto/16 :goto_4b
.end method

.method private startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .registers 11

    .prologue
    .line 1958
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1959
    const/4 v0, 0x0

    return-object v0

    .line 1961
    :cond_8
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1972
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_1d

    move-result-wide v2

    .line 1974
    :try_start_f
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/InputMethodManagerService;->startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_18

    move-result-object v0

    .line 1977
    :try_start_13
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1d

    monitor-exit v1

    .line 1974
    return-object v0

    .line 1976
    :catchall_18
    move-exception v0

    .line 1977
    :try_start_19
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1976
    throw v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1d

    .line 1961
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private switchUserLocked(I)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 1373
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1378
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1379
    :goto_12
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateCurrentProfileIds()V

    .line 1382
    new-instance v0, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-direct {v0, v2, p1}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;-><init>(Ljava/util/HashMap;I)V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    .line 1383
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 1393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1394
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1397
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v2, :cond_60

    .line 1398
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1399
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    .line 1400
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1401
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 1404
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1406
    :cond_5a
    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1408
    :try_start_5d
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_60
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_60} :catch_76

    .line 1414
    :cond_60
    :goto_60
    if-eqz v0, :cond_73

    .line 1415
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1416
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v1

    .line 1417
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 1415
    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V

    .line 1422
    :cond_73
    return-void

    :cond_74
    move v0, v1

    .line 1378
    goto :goto_12

    .line 1409
    :catch_76
    move-exception v1

    .line 1410
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "Unexpected exception"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60
.end method

.method private updateSystemUi(Landroid/os/IBinder;II)V
    .registers 6

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 2283
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 2285
    return-void

    .line 2282
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateSystemUiLocked(Landroid/os/IBinder;II)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 2289
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2290
    return-void

    .line 2295
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2298
    if-eqz p2, :cond_1b

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    move p2, v0

    .line 2302
    :cond_1b
    invoke-direct {p0, p2}, Lcom/android/server/InputMethodManagerService;->shouldShowImeSwitcherLocked(I)Z

    move-result v1

    .line 2303
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_28

    .line 2304
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 2307
    :cond_28
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2308
    if-eqz v0, :cond_5a

    if-eqz v1, :cond_5a

    .line 2310
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 2311
    const v4, 0x1040589

    .line 2310
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 2313
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2312
    invoke-static {v1, v0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_70

    .line 2318
    :try_start_45
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_56

    .line 2319
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2318
    if-eqz v0, :cond_56

    .line 2326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_56} :catch_75
    .catchall {:try_start_45 .. :try_end_56} :catchall_70

    .line 2341
    :cond_56
    :goto_56
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2343
    return-void

    .line 2331
    :cond_5a
    :try_start_5a
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_56

    .line 2335
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2336
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2335
    const/4 v4, 0x0

    .line 2336
    const/16 v5, 0x8

    .line 2335
    invoke-virtual {v0, v4, v5, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 2337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationShown:Z
    :try_end_6f
    .catchall {:try_start_5a .. :try_end_6f} :catchall_70

    goto :goto_56

    .line 2340
    :catchall_70
    move-exception v0

    .line 2341
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2340
    throw v0

    .line 2328
    :catch_75
    move-exception v0

    goto :goto_56
.end method

.method private windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;
    .registers 23

    .prologue
    .line 2726
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v2

    .line 2727
    const/4 v4, 0x0

    .line 2728
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2730
    :try_start_9
    iget-object v9, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_3b

    .line 2742
    :try_start_c
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2743
    if-nez v3, :cond_40

    .line 2744
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2745
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 2744
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_38

    .line 2730
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v9

    throw v2
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_3b

    .line 2881
    :catchall_3b
    move-exception v2

    .line 2882
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2881
    throw v2

    .line 2749
    :cond_40
    :try_start_40
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v6, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_47} :catch_50
    .catchall {:try_start_40 .. :try_end_47} :catchall_38

    move-result v5

    if-nez v5, :cond_51

    :try_start_4a
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_3b

    .line 2759
    const/4 v2, 0x0

    .line 2882
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2759
    return-object v2

    .line 2761
    :catch_50
    move-exception v5

    .line 2764
    :cond_51
    if-nez v2, :cond_70

    .line 2765
    :try_start_53
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "A background user is requesting window. Hiding IME."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "If you want to interect with IME, you need android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_38

    :try_start_6a
    monitor-exit v9
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_3b

    .line 2769
    const/4 v2, 0x0

    .line 2882
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2769
    return-object v2

    .line 2772
    :cond_70
    :try_start_70
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    move-object/from16 v0, p3

    if-ne v2, v0, :cond_91

    .line 2777
    if-eqz p7, :cond_8b

    move-object v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move v8, p1

    .line 2778
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    :try_end_85
    .catchall {:try_start_70 .. :try_end_85} :catchall_38

    move-result-object v2

    :try_start_86
    monitor-exit v9
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_3b

    .line 2882
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2778
    return-object v2

    :cond_8b
    :try_start_8b
    monitor-exit v9
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_3b

    .line 2781
    const/4 v2, 0x0

    .line 2882
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2781
    return-object v2

    .line 2787
    :cond_91
    :try_start_91
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    .line 2788
    move/from16 v0, p5

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 2789
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2799
    move/from16 v0, p5

    and-int/lit16 v2, v0, 0xf0

    .line 2800
    const/16 v5, 0x10

    .line 2799
    if-eq v2, v5, :cond_d5

    .line 2801
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 2802
    const/4 v5, 0x3

    .line 2801
    invoke-virtual {v2, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v2

    move v6, v2

    .line 2804
    :goto_af
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_d8

    const/4 v2, 0x1

    move v5, v2

    .line 2810
    :goto_b5
    const/4 v2, 0x0

    .line 2811
    and-int/lit8 v7, p5, 0xf

    packed-switch v7, :pswitch_data_16a

    move v12, v2

    move-object v2, v4

    move v4, v12

    .line 2876
    :goto_be
    if-nez v4, :cond_d0

    if-eqz p7, :cond_d0

    move-object v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move v8, p1

    .line 2877
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    :try_end_cf
    .catchall {:try_start_91 .. :try_end_cf} :catchall_38

    move-result-object v2

    :cond_d0
    :try_start_d0
    monitor-exit v9
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_3b

    .line 2882
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2885
    return-object v2

    .line 2799
    :cond_d5
    const/4 v2, 0x1

    move v6, v2

    goto :goto_af

    .line 2804
    :cond_d8
    const/4 v2, 0x0

    move v5, v2

    goto :goto_b5

    .line 2813
    :pswitch_db
    if-eqz v5, :cond_e1

    xor-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_f0

    .line 2814
    :cond_e1
    :try_start_e1
    invoke-static/range {p6 .. p6}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 2819
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    :cond_ec
    :goto_ec
    move v12, v2

    move-object v2, v4

    move v4, v12

    .line 2838
    goto :goto_be

    .line 2821
    :cond_f0
    if-eqz v5, :cond_ec

    if-eqz v6, :cond_ec

    move/from16 v0, p5

    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_ec

    .line 2831
    if-eqz p7, :cond_10b

    move-object v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move v8, p1

    .line 2832
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v4

    .line 2834
    const/4 v2, 0x1

    .line 2836
    :cond_10b
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    goto :goto_ec

    :pswitch_111
    move v12, v2

    move-object v2, v4

    move v4, v12

    .line 2841
    goto :goto_be

    .line 2843
    :pswitch_115
    move/from16 v0, p5

    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_120

    .line 2846
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    :cond_120
    move v12, v2

    move-object v2, v4

    move v4, v12

    .line 2848
    goto :goto_be

    .line 2851
    :pswitch_124
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move v12, v2

    move-object v2, v4

    move v4, v12

    .line 2852
    goto :goto_be

    .line 2854
    :pswitch_12d
    move/from16 v0, p5

    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_149

    .line 2857
    if-eqz p7, :cond_144

    move-object v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move v8, p1

    .line 2858
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v4

    .line 2860
    const/4 v2, 0x1

    .line 2862
    :cond_144
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    :cond_149
    move v12, v2

    move-object v2, v4

    move v4, v12

    .line 2864
    goto/16 :goto_be

    .line 2867
    :pswitch_14e
    if-eqz p7, :cond_15f

    move-object v2, p0

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p7

    move/from16 v7, p4

    move v8, p1

    .line 2868
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v4

    .line 2870
    const/4 v2, 0x1

    .line 2872
    :cond_15f
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_164
    .catchall {:try_start_e1 .. :try_end_164} :catchall_38

    move v12, v2

    move-object v2, v4

    move v4, v12

    .line 2873
    goto/16 :goto_be

    .line 2811
    nop

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_db
        :pswitch_111
        :pswitch_115
        :pswitch_124
        :pswitch_12d
        :pswitch_14e
    .end packed-switch
.end method


# virtual methods
.method public addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V
    .registers 9

    .prologue
    .line 1619
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1620
    return-void

    .line 1622
    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1623
    :try_start_a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService$ClientState;-><init>(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1a

    monitor-exit v1

    .line 1626
    return-void

    .line 1622
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;
    .registers 15

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1747
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-nez v0, :cond_1b

    .line 1748
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1749
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->binding:Landroid/view/inputmethod/InputBinding;

    const/16 v4, 0x3f2

    .line 1748
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1750
    iput-boolean v9, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 1753
    :cond_1b
    new-instance v11, Landroid/os/Binder;

    invoke-direct {v11}, Landroid/os/Binder;-><init>()V

    .line 1754
    new-instance v0, Lcom/android/server/InputMethodManagerService$StartInputInfo;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 1755
    xor-int/lit8 v4, p2, 0x1

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget v7, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    .line 1756
    iget v8, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    move v3, p1

    .line 1754
    invoke-direct/range {v0 .. v8}, Lcom/android/server/InputMethodManagerService$StartInputInfo;-><init>(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    .line 1757
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v11, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    invoke-virtual {v1, v0}, Lcom/android/server/InputMethodManagerService$StartInputHistory;->addEntry(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V

    .line 1760
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 1761
    iget-object v8, v5, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1762
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    if-eqz p2, :cond_7c

    const/4 v3, 0x0

    .line 1763
    :goto_4b
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1762
    const/16 v1, 0x7d0

    move-object v4, v11

    .line 1761
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1773
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    if-eqz v0, :cond_64

    .line 1775
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getAppShowFlags()I

    move-result v0

    invoke-virtual {p0, v0, v10}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    .line 1777
    :cond_64
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v1, v5, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    .line 1778
    iget-object v2, v5, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_7e

    iget-object v2, v5, Lcom/android/server/InputMethodManagerService$SessionState;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    move-result-object v2

    .line 1779
    :goto_72
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 1777
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    :cond_7c
    move v3, v9

    .line 1762
    goto :goto_4b

    :cond_7e
    move-object v2, v10

    .line 1778
    goto :goto_72
.end method

.method buildInputMethodListLocked(Z)V
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3529
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_10

    .line 3530
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "buildInputMethodListLocked is not allowed until system is ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    return-void

    .line 3533
    :cond_10
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3534
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3535
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    .line 3536
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->clearKnownImePackageNamesLocked()V

    .line 3539
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 3545
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3547
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 3546
    const v2, 0x8080

    .line 3544
    invoke-virtual {v5, v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 3550
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    invoke-virtual {v0}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;

    move-result-object v7

    move v2, v3

    .line 3551
    :goto_47
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c8

    .line 3552
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3553
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3554
    invoke-static {v0}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v8

    .line 3555
    const-string/jumbo v9, "android.permission.BIND_INPUT_METHOD"

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    .line 3556
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skipping input method "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3557
    const-string/jumbo v8, ": it does not require the permission "

    .line 3556
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3558
    const-string/jumbo v8, "android.permission.BIND_INPUT_METHOD"

    .line 3556
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :goto_8c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_47

    .line 3564
    :cond_90
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3566
    :try_start_96
    new-instance v9, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v0, v1}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 3567
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3568
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 3569
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_ab} :catch_ac

    goto :goto_8c

    .line 3574
    :catch_ac
    move-exception v0

    .line 3575
    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to load input method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8c

    .line 3587
    :cond_c8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3588
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    const/16 v2, 0x200

    .line 3586
    invoke-virtual {v5, v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 3589
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    move v1, v3

    .line 3590
    :goto_e1
    if-ge v1, v6, :cond_138

    .line 3591
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3592
    const-string/jumbo v7, "android.permission.BIND_INPUT_METHOD"

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_134

    .line 3593
    iget-object v7, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v8, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/InputMethodManagerService$MyPackageMonitor;->addKnownImePackageNameLocked(Ljava/lang/String;)V

    .line 3595
    :try_start_fd
    iget-object v7, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 3596
    iget-boolean v8, v7, Landroid/content/pm/ApplicationInfo;->isSystemSignature:Z

    if-nez v8, :cond_134

    .line 3597
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/content/pm/ApplicationInfo;->isSystemSignature:Z

    .line 3598
    const-string/jumbo v8, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "The xtc_ime is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, " system signature state is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->isSystemSignature:Z

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fd .. :try_end_134} :catch_1b5

    .line 3590
    :cond_134
    :goto_134
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e1

    .line 3607
    :cond_138
    if-nez p1, :cond_15f

    .line 3609
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v2

    .line 3610
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move v1, v3

    .line 3611
    :goto_145
    if-ge v1, v5, :cond_1b8

    .line 3612
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3613
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17f

    move v0, v4

    .line 3618
    :goto_156
    if-nez v0, :cond_15f

    .line 3623
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    move p1, v4

    .line 3627
    :cond_15f
    if-eqz p1, :cond_183

    .line 3629
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3630
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3631
    :goto_16d
    if-ge v3, v2, :cond_183

    .line 3632
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3636
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 3631
    add-int/lit8 v3, v3, 0x1

    goto :goto_16d

    .line 3611
    :cond_17f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_145

    .line 3640
    :cond_183
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 3641
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a9

    .line 3642
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b1

    .line 3643
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "Default IME is uninstalled. Choose new default IME."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 3645
    invoke-virtual {p0, v4}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 3656
    :cond_1a9
    :goto_1a9
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 3657
    return-void

    .line 3649
    :cond_1b1
    invoke-virtual {p0, v0, v4}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    goto :goto_1a9

    .line 3600
    :catch_1b5
    move-exception v0

    goto/16 :goto_134

    :cond_1b8
    move v0, v3

    goto :goto_156
.end method

.method clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .registers 3

    .prologue
    .line 2078
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2079
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2080
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2081
    return-void
.end method

.method clearCurMethodLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2102
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_29

    .line 2103
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 2104
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    goto :goto_10

    .line 2107
    :cond_20
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 2108
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2109
    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 2111
    :cond_29
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_34

    .line 2112
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 2114
    :cond_34
    iput-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    .line 2115
    return-void
.end method

.method public clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V
    .registers 4

    .prologue
    .line 3150
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3151
    return-void

    .line 3153
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3154
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_19

    move-result v1

    if-nez v1, :cond_12

    monitor-exit v0

    .line 3155
    return-void

    :cond_12
    monitor-exit v0

    .line 3158
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->clearLastInputMethodWindowForTransition()V

    .line 3159
    return-void

    .line 3153
    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 4452
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4453
    return-object v3

    .line 4456
    :cond_8
    if-nez p1, :cond_13

    .line 4457
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "token"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4459
    :cond_13
    if-nez p3, :cond_1e

    .line 4460
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "packageName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4462
    :cond_1e
    if-nez p2, :cond_29

    .line 4463
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "contentUri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4465
    :cond_29
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 4466
    const-string/jumbo v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 4467
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "contentUri must have content scheme"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4470
    :cond_3f
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 4471
    :try_start_42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4472
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_ca

    if-nez v0, :cond_4c

    monitor-exit v6

    .line 4473
    return-object v3

    .line 4475
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eq v0, p1, :cond_79

    .line 4476
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring createInputContentUriToken mCurToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4477
    const-string/jumbo v2, " token="

    .line 4476
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_4c .. :try_end_77} :catchall_ca

    monitor-exit v6

    .line 4478
    return-object v3

    .line 4483
    :cond_79
    :try_start_79
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 4484
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring createInputContentUriToken mCurAttribute.packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4485
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 4484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4485
    const-string/jumbo v2, " packageName="

    .line 4484
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_79 .. :try_end_ac} :catchall_ca

    monitor-exit v6

    .line 4486
    return-object v3

    .line 4489
    :cond_ae
    :try_start_ae
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4491
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 4493
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    .line 4495
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 4502
    new-instance v0, Lcom/android/server/InputContentUriTokenHandler;

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/InputContentUriTokenHandler;-><init>(Landroid/net/Uri;ILjava/lang/String;II)V
    :try_end_c8
    .catchall {:try_start_ae .. :try_end_c8} :catchall_ca

    monitor-exit v6

    return-object v0

    .line 4470
    :catchall_ca
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 4526
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "InputMethodManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 4532
    :cond_c
    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 4534
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 4535
    :try_start_14
    const-string/jumbo v0, "Current Input Method Manager state:"

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4536
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  Input Methods: mMethodMapUpdateCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMapUpdateCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4538
    const/4 v0, 0x0

    move v1, v0

    :goto_3b
    if-ge v1, v4, :cond_6d

    .line 4539
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4540
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  InputMethod #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4541
    const-string/jumbo v5, "    "

    invoke-virtual {v0, v2, v5}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4538
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3b

    .line 4543
    :cond_6d
    const-string/jumbo v0, "  Clients:"

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4544
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4545
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    client="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    inputContext="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->inputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4548
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    sessionRequested="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "    curSession="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_10b
    .catchall {:try_start_14 .. :try_end_10b} :catchall_10d

    goto/16 :goto_7d

    .line 4534
    :catchall_10d
    move-exception v0

    monitor-exit v3

    throw v0

    .line 4551
    :cond_110
    :try_start_110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mCurMethodId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4552
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mCurClient="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " mCurSeq="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mCurFocusedWindow="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindow:Landroid/os/IBinder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4555
    const-string/jumbo v4, " softInputMode="

    .line 4554
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4556
    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowSoftInputMode:I

    invoke-static {v4}, Lcom/android/internal/view/InputMethodClient;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    .line 4554
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4557
    const-string/jumbo v4, " client="

    .line 4554
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4557
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4554
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4558
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 4559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mCurId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " mHaveConnect="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4560
    const-string/jumbo v5, " mBoundToMethod="

    .line 4559
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4560
    iget-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 4559
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mCurToken="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  mCurIntent="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4563
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 4564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mCurMethod="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mEnabledSession="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mImeWindowVis="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    invoke-static {v6}, Lcom/android/server/InputMethodManagerService;->imeWindowStatusToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mShowRequested="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4568
    const-string/jumbo v6, " mShowExplicitlyRequested="

    .line 4567
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4568
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 4567
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4569
    const-string/jumbo v6, " mShowForced="

    .line 4567
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4569
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 4567
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4570
    const-string/jumbo v6, " mInputShown="

    .line 4567
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4570
    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 4567
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mInFullscreenMode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mCurUserActionNotificationSequenceNumber="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4573
    iget v6, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 4572
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mSystemReady="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, " mInteractive="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  mSettingsObserver="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4576
    const-string/jumbo v0, "  mSwitchingController:"

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4577
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-virtual {v0, v2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 4578
    const-string/jumbo v0, "  mSettings:"

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4579
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v6, "    "

    invoke-virtual {v0, v2, v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->dumpLocked(Landroid/util/Printer;Ljava/lang/String;)V

    .line 4581
    const-string/jumbo v0, "  mStartInputHistory:"

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4582
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/InputMethodManagerService$StartInputHistory;

    const-string/jumbo v6, "   "

    invoke-virtual {v0, p2, v6}, Lcom/android/server/InputMethodManagerService$StartInputHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_316
    .catchall {:try_start_110 .. :try_end_316} :catchall_10d

    monitor-exit v3

    .line 4585
    const-string/jumbo v0, " "

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4586
    if-eqz v1, :cond_37f

    .line 4587
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4589
    :try_start_322
    iget-object v0, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_32b
    .catch Ljava/io/IOException; {:try_start_322 .. :try_end_32b} :catch_366
    .catch Landroid/os/RemoteException; {:try_start_322 .. :try_end_32b} :catch_366

    .line 4597
    :goto_32b
    if-eqz v4, :cond_353

    if-eq v1, v4, :cond_353

    .line 4598
    const-string/jumbo v0, " "

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4599
    const-string/jumbo v0, "Warning: Current input method client doesn\'t match the last focused. window."

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4601
    const-string/jumbo v0, "Dumping input method client in the last focused window just in case."

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4602
    const-string/jumbo v0, " "

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4603
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4605
    :try_start_34a
    iget-object v0, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_353
    .catch Ljava/io/IOException; {:try_start_34a .. :try_end_353} :catch_386
    .catch Landroid/os/RemoteException; {:try_start_34a .. :try_end_353} :catch_386

    .line 4611
    :cond_353
    :goto_353
    const-string/jumbo v0, " "

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 4612
    if-eqz v5, :cond_3b8

    .line 4613
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 4615
    :try_start_35e
    invoke-interface {v5}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_365
    .catch Ljava/io/IOException; {:try_start_35e .. :try_end_365} :catch_39f
    .catch Landroid/os/RemoteException; {:try_start_35e .. :try_end_365} :catch_39f

    .line 4622
    :goto_365
    return-void

    .line 4590
    :catch_366
    move-exception v0

    .line 4591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to dump input method client: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_32b

    .line 4594
    :cond_37f
    const-string/jumbo v0, "No input method client."

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_32b

    .line 4606
    :catch_386
    move-exception v0

    .line 4607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to dump input method client in focused window: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_353

    .line 4616
    :catch_39f
    move-exception v0

    .line 4617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to dump input method service: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_365

    .line 4620
    :cond_3b8
    const-string/jumbo v0, "No input method service."

    invoke-interface {v2, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_365
.end method

.method executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 1678
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Binder;

    if-eqz v0, :cond_e

    .line 1679
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, p2}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1684
    :goto_d
    return-void

    .line 1681
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 1682
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    goto :goto_d
.end method

.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 2

    .prologue
    .line 1984
    return-void
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    .prologue
    .line 4098
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4099
    const/4 v0, 0x0

    return-object v0

    .line 4101
    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 4102
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_11

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 4101
    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1582
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1583
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1585
    :cond_b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1586
    :try_start_e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1585
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1598
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1599
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1601
    :cond_b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1603
    if-nez p1, :cond_26

    :try_start_10
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 1604
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1608
    :goto_1e
    if-nez v0, :cond_2f

    .line 1609
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_39

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1606
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    goto :goto_1e

    .line 1611
    :cond_2f
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1612
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1611
    invoke-virtual {v2, v3, v0, p2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodSubtypeListLocked(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_39

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1601
    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1571
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1572
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1574
    :cond_b
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1575
    :try_start_e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    .line 1574
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 2

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3079
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3080
    return-object v4

    .line 3082
    :cond_8
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3083
    :try_start_b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v1

    .line 3085
    if-eqz v1, :cond_27

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 3086
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_56

    move-result v0

    .line 3085
    if-eqz v0, :cond_29

    :cond_27
    monitor-exit v2

    .line 3086
    return-object v4

    .line 3087
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_56

    .line 3088
    if-nez v0, :cond_37

    monitor-exit v2

    return-object v4

    .line 3090
    :cond_37
    :try_start_37
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3092
    invoke-static {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v1

    .line 3093
    if-ltz v1, :cond_4b

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_48} :catch_53
    .catchall {:try_start_37 .. :try_end_48} :catchall_56

    move-result v3

    if-lt v1, v3, :cond_4d

    :cond_4b
    monitor-exit v2

    .line 3094
    return-object v4

    .line 3096
    :cond_4d
    :try_start_4d
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_50} :catch_53
    .catchall {:try_start_4d .. :try_end_50} :catchall_56

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 3097
    :catch_53
    move-exception v0

    monitor-exit v2

    .line 3098
    return-object v4

    .line 3082
    :catchall_56
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getScreenStateRunningIME()Z
    .registers 3

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1650
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1651
    const/4 v0, 0x1

    return v0

    .line 1653
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/List;
    .registers 6

    .prologue
    .line 4149
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4150
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4151
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_25

    .line 4157
    const-string/jumbo v0, "voice"

    .line 4156
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->findLastResortApplicableShortcutInputMethodAndSubtypeLocked(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 4158
    if-eqz v0, :cond_23

    .line 4159
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4160
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_5a

    :cond_23
    monitor-exit v1

    .line 4162
    return-object v2

    .line 4164
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4165
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4166
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 4167
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catchall {:try_start_25 .. :try_end_59} :catchall_5a

    goto :goto_4a

    .line 4149
    :catchall_5a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5d
    monitor-exit v1

    .line 4170
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 3270
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_27e

    .line 3467
    return v1

    .line 3273
    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_2d0

    .line 3287
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown subtype picker mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    return v1

    .line 3278
    :pswitch_2a
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 3290
    :goto_2c
    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V

    .line 3291
    return v7

    :pswitch_30
    move v0, v7

    .line 3282
    goto :goto_2c

    :pswitch_32
    move v0, v1

    .line 3285
    goto :goto_2c

    .line 3294
    :sswitch_34
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V

    .line 3295
    return v7

    .line 3298
    :sswitch_3c
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->showConfigureInputMethods()V

    .line 3299
    return v7

    .line 3305
    :sswitch_40
    :try_start_40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->unbindInput()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_47} :catch_27b

    .line 3309
    :goto_47
    return v7

    .line 3311
    :sswitch_48
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3313
    :try_start_4c
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_57} :catch_278

    .line 3316
    :goto_57
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3317
    return v7

    .line 3319
    :sswitch_5b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3323
    :try_start_5f
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/ResultReceiver;

    invoke-interface {v1, v3, v2}, Lcom/android/internal/view/IInputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6c} :catch_275

    .line 3326
    :goto_6c
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3327
    return v7

    .line 3329
    :sswitch_70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3333
    :try_start_74
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/ResultReceiver;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/internal/view/IInputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_80} :catch_272

    .line 3336
    :goto_80
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3337
    return v7

    .line 3339
    :sswitch_84
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3340
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_89
    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8e

    monitor-exit v0

    .line 3342
    return v7

    .line 3339
    :catchall_8e
    move-exception v1

    monitor-exit v0

    throw v1

    .line 3344
    :sswitch_91
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3347
    :try_start_95
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethod;->attachToken(Landroid/os/IBinder;)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_a0} :catch_26f

    .line 3350
    :goto_a0
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3351
    return v7

    .line 3353
    :sswitch_a4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3354
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethod;

    .line 3355
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/view/InputChannel;

    .line 3357
    :try_start_b0
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputSessionCallback;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    :try_end_b7
    .catch Landroid/os/RemoteException; {:try_start_b0 .. :try_end_b7} :catch_c6
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_d3

    .line 3362
    if-eqz v2, :cond_c2

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 3363
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 3366
    :cond_c2
    :goto_c2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3367
    return v7

    .line 3358
    :catch_c6
    move-exception v3

    .line 3362
    if-eqz v2, :cond_c2

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 3363
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    goto :goto_c2

    .line 3359
    :catchall_d3
    move-exception v0

    .line 3362
    if-eqz v2, :cond_df

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 3363
    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 3359
    :cond_df
    throw v0

    .line 3372
    :sswitch_e0
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3373
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_108

    move v5, v7

    .line 3374
    :goto_e7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 3375
    iget-object v1, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    .line 3376
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3377
    iget-object v2, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContext;

    .line 3378
    iget-object v4, v6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/EditorInfo;

    .line 3380
    :try_start_fc
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V

    .line 3381
    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/view/IInputMethod;->startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;Z)V
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_fc .. :try_end_104} :catch_26c

    .line 3385
    :goto_104
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3386
    return v7

    :cond_108
    move v5, v1

    .line 3373
    goto :goto_e7

    .line 3393
    :sswitch_10a
    :try_start_10a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/IInputMethodClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_10a .. :try_end_115} :catch_269

    .line 3397
    :goto_115
    return v7

    .line 3399
    :sswitch_116
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3400
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/view/IInputMethodClient;

    .line 3401
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/InputBindResult;

    .line 3403
    :try_start_122
    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodClient;->onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    :try_end_125
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_125} :catch_138
    .catchall {:try_start_122 .. :try_end_125} :catchall_165

    .line 3409
    iget-object v3, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_134

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 3410
    iget-object v1, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 3413
    :cond_134
    :goto_134
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3414
    return v7

    .line 3404
    :catch_138
    move-exception v3

    .line 3405
    :try_start_139
    const-string/jumbo v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Client died receiving input method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_155
    .catchall {:try_start_139 .. :try_end_155} :catchall_165

    .line 3409
    iget-object v3, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_134

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 3410
    iget-object v1, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    goto :goto_134

    .line 3406
    :catchall_165
    move-exception v0

    .line 3409
    iget-object v3, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_175

    invoke-static {v1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 3410
    iget-object v1, v2, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 3406
    :cond_175
    throw v0

    .line 3418
    :sswitch_176
    :try_start_176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_18a

    move v0, v7

    :goto_181
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_186

    move v1, v7

    :cond_186
    invoke-interface {v2, v0, v1}, Lcom/android/internal/view/IInputMethodClient;->setActive(ZZ)V
    :try_end_189
    .catch Landroid/os/RemoteException; {:try_start_176 .. :try_end_189} :catch_18c

    .line 3424
    :goto_189
    return v7

    :cond_18a
    move v0, v1

    .line 3418
    goto :goto_181

    .line 3419
    :catch_18c
    move-exception v0

    .line 3420
    const-string/jumbo v1, "InputMethodManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got RemoteException sending setActive(false) notification to pid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3421
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    .line 3420
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3421
    const-string/jumbo v2, " uid "

    .line 3420
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3422
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    iget v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    .line 3420
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_189

    .line 3426
    :sswitch_1bf
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1c4

    move v1, v7

    :cond_1c4
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->handleSetInteractive(Z)V

    .line 3427
    return v7

    .line 3429
    :sswitch_1c8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1cd

    move v1, v7

    :cond_1cd
    invoke-direct {p0, v1}, Lcom/android/server/InputMethodManagerService;->handleSwitchInputMethod(Z)V

    .line 3430
    return v7

    .line 3432
    :sswitch_1d1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3433
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3435
    :try_start_1d7
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethodClient;->setUserActionNotificationSequenceNumber(I)V
    :try_end_1dc
    .catch Landroid/os/RemoteException; {:try_start_1d7 .. :try_end_1dc} :catch_1dd

    .line 3443
    :goto_1dc
    return v7

    .line 3436
    :catch_1dd
    move-exception v2

    .line 3437
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got RemoteException sending setUserActionNotificationSequenceNumber("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3439
    const-string/jumbo v3, ") notification to pid "

    .line 3437
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3440
    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    .line 3437
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3440
    const-string/jumbo v3, " uid "

    .line 3437
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3441
    iget v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    .line 3437
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1dc

    .line 3446
    :sswitch_213
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_218

    move v1, v7

    .line 3447
    :cond_218
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 3449
    :try_start_21c
    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethodClient;->reportFullscreenMode(Z)V
    :try_end_221
    .catch Landroid/os/RemoteException; {:try_start_21c .. :try_end_221} :catch_222

    .line 3455
    :goto_221
    return v7

    .line 3450
    :catch_222
    move-exception v2

    .line 3451
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got RemoteException sending reportFullscreen("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3452
    const-string/jumbo v3, ") notification to pid="

    .line 3451
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3453
    iget v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    .line 3451
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3453
    const-string/jumbo v3, " uid="

    .line 3451
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3453
    iget v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    .line 3451
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_221

    .line 3460
    :sswitch_258
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_25f

    move v1, v7

    :cond_25f
    invoke-virtual {v0, v1}, Lcom/android/server/InputMethodManagerService$HardKeyboardListener;->handleHardKeyboardStatusChange(Z)V

    .line 3461
    return v7

    .line 3463
    :sswitch_263
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3464
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->onUnlockUser(I)V

    .line 3465
    return v7

    .line 3394
    :catch_269
    move-exception v0

    goto/16 :goto_115

    .line 3383
    :catch_26c
    move-exception v0

    goto/16 :goto_104

    .line 3348
    :catch_26f
    move-exception v1

    goto/16 :goto_a0

    .line 3334
    :catch_272
    move-exception v1

    goto/16 :goto_80

    .line 3324
    :catch_275
    move-exception v1

    goto/16 :goto_6c

    .line 3314
    :catch_278
    move-exception v1

    goto/16 :goto_57

    .line 3306
    :catch_27b
    move-exception v0

    goto/16 :goto_47

    .line 3270
    :sswitch_data_27e
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_34
        0x3 -> :sswitch_3c
        0x3e8 -> :sswitch_40
        0x3f2 -> :sswitch_48
        0x3fc -> :sswitch_5b
        0x406 -> :sswitch_70
        0x40b -> :sswitch_84
        0x410 -> :sswitch_91
        0x41a -> :sswitch_a4
        0x7d0 -> :sswitch_e0
        0xbb8 -> :sswitch_10a
        0xbc2 -> :sswitch_116
        0xbcc -> :sswitch_176
        0xbd6 -> :sswitch_1bf
        0xbe0 -> :sswitch_1d1
        0xbe5 -> :sswitch_213
        0xbea -> :sswitch_1c8
        0xfa0 -> :sswitch_258
        0x1388 -> :sswitch_263
    .end sparse-switch

    .line 3273
    :pswitch_data_2d0
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_30
        :pswitch_32
    .end packed-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2661
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_f

    .line 2662
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 2661
    if-eqz v2, :cond_f

    .line 2664
    :cond_e
    return v1

    .line 2666
    :cond_f
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    if-eqz v2, :cond_18

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_18

    .line 2668
    return v1

    .line 2679
    :cond_18
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_56

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    if-nez v2, :cond_52

    .line 2680
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_54

    move v2, v0

    .line 2682
    :goto_27
    if-eqz v2, :cond_58

    .line 2687
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2688
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v5, 0x406

    .line 2687
    invoke-virtual {v3, v5, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2693
    :goto_38
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_49

    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v2, :cond_49

    .line 2694
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2695
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 2697
    :cond_49
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2698
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2699
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2700
    iput-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 2701
    return v0

    :cond_52
    move v2, v0

    .line 2679
    goto :goto_27

    :cond_54
    move v2, v1

    .line 2680
    goto :goto_27

    :cond_56
    move v2, v1

    .line 2679
    goto :goto_27

    :cond_58
    move v0, v1

    .line 2691
    goto :goto_38
.end method

.method hideInputMethodMenu()V
    .registers 3

    .prologue
    .line 3869
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 3870
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 3872
    return-void

    .line 3869
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method hideInputMethodMenuLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3877
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 3878
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3879
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 3882
    :cond_c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 3883
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 3884
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    .line 3885
    return-void
.end method

.method public hideMySoftInput(Landroid/os/IBinder;I)V
    .registers 7

    .prologue
    .line 3213
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3214
    return-void

    .line 3216
    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3217
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_24

    move-result v0

    if-nez v0, :cond_12

    monitor-exit v1

    .line 3218
    return-void

    .line 3220
    :cond_12
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_24

    move-result-wide v2

    .line 3222
    const/4 v0, 0x0

    :try_start_17
    invoke-virtual {p0, p2, v0}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1f

    .line 3224
    :try_start_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_24

    monitor-exit v1

    .line 3227
    return-void

    .line 3223
    :catchall_1f
    move-exception v0

    .line 3224
    :try_start_20
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3223
    throw v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 3216
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 2629
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2630
    return v5

    .line 2632
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2635
    :try_start_f
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_45

    .line 2636
    :try_start_12
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_42

    if-eqz v0, :cond_18

    if-nez p1, :cond_25

    .line 2642
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_3c
    .catchall {:try_start_18 .. :try_end_1d} :catchall_42

    move-result v0

    if-nez v0, :cond_33

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_45

    .line 2656
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2645
    return v5

    .line 2637
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v0, v4, :cond_18

    .line 2653
    :cond_33
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_42

    move-result v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_45

    .line 2656
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2653
    return v0

    .line 2647
    :catch_3c
    move-exception v0

    :try_start_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_45

    .line 2656
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    return v5

    .line 2635
    :catchall_42
    move-exception v0

    :try_start_43
    monitor-exit v1

    throw v0
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_45

    .line 2655
    :catchall_45
    move-exception v0

    .line 2656
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2655
    throw v0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 2363
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2364
    return v4

    .line 2366
    :cond_8
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2367
    :try_start_b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2369
    if-eqz v0, :cond_67

    .line 2370
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v2

    .line 2371
    if-ltz p3, :cond_1e

    array-length v3, v2
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_64

    if-lt p3, v3, :cond_20

    :cond_1e
    monitor-exit v1

    return v4

    .line 2372
    :cond_20
    :try_start_20
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v3

    .line 2373
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2376
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2377
    const-string/jumbo v0, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2378
    const-string/jumbo v0, "before"

    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2379
    const-string/jumbo v0, "after"

    aget-object v2, v2, p3

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2380
    const-string/jumbo v0, "hashcode"

    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v2

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_64

    move-result-wide v2

    .line 2383
    :try_start_52
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_5f

    .line 2385
    :try_start_59
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_64

    .line 2387
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 2384
    :catchall_5f
    move-exception v0

    .line 2385
    :try_start_60
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2384
    throw v0
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_64

    .line 2366
    :catchall_64
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_67
    monitor-exit v1

    .line 2390
    return v4
.end method

.method public notifyUserAction(I)V
    .registers 6

    .prologue
    .line 3166
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3167
    :try_start_3
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-eq v0, p1, :cond_9

    monitor-exit v1

    .line 3173
    return-void

    .line 3175
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3176
    if-eqz v0, :cond_1c

    .line 3177
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit v1

    .line 3180
    return-void

    .line 3166
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onActionLocaleChanged()V
    .registers 4

    .prologue
    .line 881
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 882
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_19

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2a

    move-result v2

    if-eqz v2, :cond_19

    monitor-exit v1

    .line 884
    return-void

    .line 886
    :cond_19
    const/4 v2, 0x1

    :try_start_1a
    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 888
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 889
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 890
    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_2a

    monitor-exit v1

    .line 892
    return-void

    .line 881
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9

    .prologue
    .line 1988
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1989
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1990
    invoke-static {p2}, Lcom/android/internal/view/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    .line 1991
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-nez v0, :cond_2c

    .line 1992
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v2, "Service connected without a token!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_4d

    monitor-exit v1

    .line 1994
    return-void

    .line 1997
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1998
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v5, 0x410

    .line 1997
    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1999
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_4b

    .line 2000
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2001
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    :try_end_4b
    .catchall {:try_start_2c .. :try_end_4b} :catchall_4d

    :cond_4b
    monitor-exit v1

    .line 2005
    return-void

    .line 1988
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .prologue
    .line 2126
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2129
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_34

    .line 2130
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2129
    if-eqz v0, :cond_34

    .line 2131
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 2135
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2137
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v2, "onServiceDisconnected Service unbindCurrentClientLocked"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_36

    :cond_34
    monitor-exit v1

    .line 2141
    return-void

    .line 2126
    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    .registers 10

    .prologue
    .line 2009
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2010
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_49

    if-eqz p1, :cond_49

    .line 2011
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethod;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_49

    .line 2012
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_49

    .line 2013
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 2014
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    new-instance v2, Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/android/server/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V

    iput-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 2017
    const/16 v0, 0x9

    const/4 v2, 0x1

    .line 2016
    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    .line 2018
    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_47

    .line 2019
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2020
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/16 v5, 0xbc2

    .line 2019
    invoke-virtual {v3, v5, v4, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_4e

    :cond_47
    monitor-exit v1

    .line 2022
    return-void

    :cond_49
    monitor-exit v1

    .line 2028
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 2029
    return-void

    .line 2009
    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onSwitchUser(I)V
    .registers 4

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1284
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->switchUserLocked(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 1286
    return-void

    .line 1283
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1433
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    return v0

    .line 1434
    :catch_5
    move-exception v0

    .line 1437
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_13

    .line 1438
    const-string/jumbo v1, "InputMethodManagerService"

    const-string/jumbo v2, "Input Method Manager Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    :cond_13
    throw v0
.end method

.method onUnlockUser(I)V
    .registers 6

    .prologue
    .line 1265
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1266
    :try_start_3
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_24

    move-result v0

    .line 1270
    if-eq p1, v0, :cond_d

    monitor-exit v1

    .line 1271
    return-void

    .line 1273
    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    iget-boolean v3, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1274
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-eqz v0, :cond_22

    .line 1276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit v1

    .line 1280
    return-void

    .line 1265
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 7

    .prologue
    .line 2347
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2348
    return-void

    .line 2350
    :cond_7
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 2351
    :try_start_a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2352
    const/4 v1, 0x0

    :goto_15
    array-length v3, p1

    if-ge v1, v3, :cond_2c

    .line 2353
    aget-object v3, p1, v1

    .line 2354
    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getNotificationTargetClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 2355
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mSecureSuggestionSpans:Landroid/util/LruCache;

    invoke-virtual {v4, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2e

    .line 2352
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2c
    monitor-exit v2

    .line 2359
    return-void

    .line 2350
    :catchall_2e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    .registers 5

    .prologue
    .line 1630
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1631
    return-void

    .line 1633
    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1634
    :try_start_a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1635
    if-eqz v0, :cond_29

    .line 1636
    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->clearClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 1637
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v2, v0, :cond_22

    .line 1638
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1640
    :cond_22
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-ne v2, v0, :cond_29

    .line 1641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurFocusedWindowClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit v1

    .line 1645
    return-void

    .line 1633
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reportFullscreenMode(Landroid/os/IBinder;Z)V
    .registers 9

    .prologue
    .line 4509
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 4510
    return-void

    .line 4512
    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4513
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_36

    move-result v0

    if-nez v0, :cond_12

    monitor-exit v1

    .line 4514
    return-void

    .line 4516
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    if-eqz v0, :cond_32

    .line 4517
    iput-boolean p2, p0, Lcom/android/server/InputMethodManagerService;->mInFullscreenMode:Z

    .line 4518
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 4519
    if-eqz p2, :cond_34

    const/4 v0, 0x1

    :goto_27
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v5, 0xbe5

    .line 4518
    invoke-virtual {v3, v5, v0, v4}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_36

    :cond_32
    monitor-exit v1

    .line 4522
    return-void

    .line 4519
    :cond_34
    const/4 v0, 0x0

    goto :goto_27

    .line 4512
    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 2067
    iget-boolean v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    if-nez v0, :cond_2a

    .line 2069
    invoke-virtual {p1}, Lcom/android/server/InputMethodManagerService$ClientState;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 2070
    iput-boolean v4, p1, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 2071
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2072
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    aget-object v4, v0, v4

    .line 2073
    new-instance v5, Lcom/android/server/InputMethodManagerService$MethodCallback;

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-direct {v5, p0, v6, v0}, Lcom/android/server/InputMethodManagerService$MethodCallback;-><init>(Lcom/android/server/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V

    .line 2072
    const/16 v0, 0x41a

    .line 2071
    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2075
    :cond_2a
    return-void
.end method

.method resetCurrentMethodAndClient(I)V
    .registers 3

    .prologue
    .line 2061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2062
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 2063
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 2064
    return-void
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 3105
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3106
    return-void

    .line 3110
    :cond_8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_11

    :cond_10
    return-void

    .line 3111
    :cond_11
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 3112
    :try_start_14
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_64

    if-nez v0, :cond_1a

    monitor-exit v2

    .line 3113
    return-void

    .line 3115
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_64

    .line 3116
    if-nez v0, :cond_26

    monitor-exit v2

    return-void

    .line 3119
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2f} :catch_53
    .catchall {:try_start_26 .. :try_end_2f} :catchall_64

    move-result-object v3

    .line 3124
    if-eqz v3, :cond_6a

    .line 3125
    :try_start_32
    array-length v4, v3

    .line 3126
    :goto_33
    if-ge v1, v4, :cond_6a

    .line 3127
    aget-object v5, v3, v1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 3128
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mFileManager:Lcom/android/server/InputMethodManagerService$InputMethodFileManager;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/InputMethodManagerService$InputMethodFileManager;->addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 3129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_49
    .catchall {:try_start_32 .. :try_end_49} :catchall_64

    move-result-wide v0

    .line 3131
    const/4 v3, 0x0

    :try_start_4b
    invoke-virtual {p0, v3}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_5f

    .line 3133
    :try_start_4e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_64

    monitor-exit v2

    .line 3135
    return-void

    .line 3120
    :catch_53
    move-exception v0

    .line 3121
    :try_start_54
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "Failed to get package infos"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_64

    monitor-exit v2

    .line 3122
    return-void

    .line 3132
    :catchall_5f
    move-exception v3

    .line 3133
    :try_start_60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3132
    throw v3
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_64

    .line 3111
    :catchall_64
    move-exception v0

    monitor-exit v2

    throw v0

    .line 3126
    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_6a
    monitor-exit v2

    .line 3140
    return-void
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 4177
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4178
    return v3

    .line 4180
    :cond_8
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 4181
    if-eqz p1, :cond_2e

    :try_start_d
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-eqz v0, :cond_2e

    .line 4182
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 4183
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    .line 4184
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2e

    .line 4185
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_30

    .line 4186
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_2e
    monitor-exit v1

    .line 4189
    return v3

    .line 4180
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method setEnabledSessionInMainThread(Lcom/android/server/InputMethodManagerService$SessionState;)V
    .registers 5

    .prologue
    .line 3248
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eq v0, p1, :cond_32

    .line 3249
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_1a

    .line 3252
    :try_start_e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_35

    .line 3256
    :cond_1a
    :goto_1a
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    .line 3257
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_32

    .line 3260
    :try_start_26
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$SessionState;->method:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mEnabledSession:Lcom/android/server/InputMethodManagerService$SessionState;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService$SessionState;->session:Lcom/android/internal/view/IInputMethodSession;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/IInputMethod;->setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_32} :catch_33

    .line 3265
    :cond_32
    :goto_32
    return-void

    .line 3261
    :catch_33
    move-exception v0

    goto :goto_32

    .line 3253
    :catch_35
    move-exception v0

    goto :goto_1a
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V
    .registers 12

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2251
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2252
    return-void

    .line 2256
    :cond_a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2257
    :try_start_d
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStartInputMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/InputMethodManagerService$StartInputInfo;

    .line 2258
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    .line 2259
    iput p4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    .line 2260
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_33

    monitor-exit v1

    .line 2264
    packed-switch p4, :pswitch_data_40

    .line 2273
    :pswitch_20
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_3a

    move v1, v2

    .line 2276
    :goto_25
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 2277
    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_3c

    .line 2278
    :goto_2b
    if-eqz v0, :cond_3e

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    .line 2276
    :goto_2f
    invoke-virtual {v5, p1, v2, v1, v0}, Landroid/view/WindowManagerInternal;->updateInputMethodWindowStatus(Landroid/os/IBinder;ZZLandroid/os/IBinder;)V

    .line 2279
    return-void

    .line 2256
    :catchall_33
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_36
    move v1, v2

    .line 2267
    goto :goto_25

    :pswitch_38
    move v1, v3

    .line 2270
    goto :goto_25

    :cond_3a
    move v1, v3

    .line 2273
    goto :goto_25

    :cond_3c
    move v2, v3

    .line 2277
    goto :goto_2b

    :cond_3e
    move-object v0, v4

    .line 2278
    goto :goto_2f

    .line 2264
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_20
        :pswitch_38
        :pswitch_36
    .end packed-switch
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2931
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2932
    return-void

    .line 2934
    :cond_7
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeId(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2935
    return-void
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 7

    .prologue
    .line 2939
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2940
    return-void

    .line 2942
    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2943
    if-eqz p3, :cond_21

    .line 2945
    :try_start_c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2946
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v2

    .line 2945
    invoke-static {v0, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    .line 2944
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_25

    :goto_1f
    monitor-exit v1

    .line 2951
    return-void

    .line 2948
    :cond_21
    :try_start_21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_1f

    .line 2942
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setInputMethodEnabled(Ljava/lang/String;Z)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 3892
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3893
    return v1

    .line 3895
    :cond_8
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3896
    :try_start_b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 3897
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 3896
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_22

    .line 3899
    new-instance v0, Ljava/lang/SecurityException;

    .line 3900
    const-string/jumbo v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    .line 3899
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_1f

    .line 3895
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3904
    :cond_22
    :try_start_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_1f

    move-result-wide v2

    .line 3906
    :try_start_26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2f

    move-result v0

    .line 3908
    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_1f

    monitor-exit v1

    .line 3906
    return v0

    .line 3907
    :catchall_2f
    move-exception v0

    .line 3908
    :try_start_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3907
    throw v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_1f
.end method

.method setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3915
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3916
    if-nez v0, :cond_28

    .line 3917
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3920
    :cond_28
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 3923
    if-eqz p2, :cond_51

    .line 3924
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 3925
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3928
    return v4

    .line 3931
    :cond_4b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0, p1, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 3933
    return v3

    .line 3935
    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3936
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingIdLocked(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 3939
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 3940
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_81

    .line 3941
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "Can\'t find new IME, unsetting the current input method."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3942
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 3945
    :cond_81
    return v4

    .line 3949
    :cond_82
    return v3
.end method

.method setInputMethodLocked(Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 2476
    if-nez v0, :cond_24

    .line 2477
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2481
    :cond_24
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 2482
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v1

    .line 2483
    if-gtz v1, :cond_33

    .line 2484
    return-void

    .line 2486
    :cond_33
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 2488
    if-ltz p2, :cond_67

    if-ge p2, v1, :cond_67

    .line 2489
    invoke-virtual {v0, p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    .line 2495
    :goto_3d
    if-eqz v1, :cond_41

    if-nez v2, :cond_6c

    .line 2496
    :cond_41
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal subtype state: old subtype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2497
    const-string/jumbo v3, ", new subtype = "

    .line 2496
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    return-void

    .line 2493
    :cond_67
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    goto :goto_3d

    .line 2500
    :cond_6c
    if-eq v1, v2, :cond_8d

    .line 2501
    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v2}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2502
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_84

    .line 2504
    :try_start_76
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 2505
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_84} :catch_8e

    .line 2511
    :cond_84
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2513
    :cond_8d
    return-void

    .line 2506
    :catch_8e
    move-exception v0

    .line 2507
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v1, "Failed to call changeInputMethodSubtype"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    return-void

    .line 2517
    :cond_99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2521
    const/4 v1, 0x0

    :try_start_9e
    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 2525
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    .line 2527
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 2528
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2529
    const/high16 v4, 0x20000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2530
    const-string/jumbo v4, "input_method_id"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2531
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2533
    :cond_cb
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_cf
    .catchall {:try_start_9e .. :try_end_cf} :catchall_e0

    .line 2535
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2538
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    .line 2539
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 2538
    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 2540
    return-void

    .line 2534
    :catchall_e0
    move-exception v0

    .line 2535
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2534
    throw v0
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3060
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3061
    return v6

    .line 3063
    :cond_9
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3064
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_2e

    move-result v0

    if-nez v0, :cond_14

    monitor-exit v1

    .line 3065
    return v6

    .line 3067
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    .line 3068
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    const/4 v4, 0x0

    .line 3069
    const/4 v5, 0x1

    .line 3067
    invoke-virtual {v2, v4, v0, v3, v5}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_2e

    move-result-object v0

    .line 3070
    if-nez v0, :cond_2c

    monitor-exit v1

    .line 3071
    return v6

    :cond_2c
    monitor-exit v1

    .line 3073
    return v7

    .line 3063
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2576
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowRequested:Z

    .line 2577
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mAccessibilityRequestingNoSoftKeyboard:Z

    if-eqz v2, :cond_9

    .line 2578
    return v1

    .line 2581
    :cond_9
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_16

    .line 2582
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    .line 2583
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowForced:Z

    .line 2588
    :cond_11
    :goto_11
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v2, :cond_1d

    .line 2589
    return v1

    .line 2584
    :cond_16
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_11

    .line 2585
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowExplicitlyRequested:Z

    goto :goto_11

    .line 2593
    :cond_1d
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v2, :cond_4d

    .line 2595
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2596
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->getImeShowFlags()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v5, 0x3fc

    .line 2595
    invoke-virtual {v2, v5, v3, v4, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 2598
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mInputShown:Z

    .line 2599
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4c

    .line 2601
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    const v3, 0x2c000001

    .line 2600
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2602
    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 2623
    :cond_4c
    :goto_4c
    return v0

    .line 2605
    :cond_4d
    iget-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v2, :cond_94

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2606
    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    .line 2605
    cmp-long v2, v2, v4

    if-ltz v2, :cond_94

    .line 2611
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 2612
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 2611
    const/16 v0, 0x7d00

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2613
    const-string/jumbo v0, "InputMethodManagerService"

    const-string/jumbo v2, "Force disconnect/connect to the IME in showCurrentInputLocked()"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2615
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v2, 0x40800005    # 4.0000024f

    invoke-direct {p0, v0, p0, v2}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_94
    move v0, v1

    .line 2606
    goto :goto_4c
.end method

.method public showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 2956
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2957
    return-void

    .line 2959
    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2960
    :try_start_a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2961
    const/4 v3, 0x2

    .line 2960
    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 2963
    return-void

    .line 2959
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    .registers 7

    .prologue
    .line 2912
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2913
    return-void

    .line 2915
    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2916
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 2917
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring showInputMethodPickerFromClient of uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2918
    const-string/jumbo v3, ": "

    .line 2917
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_49

    monitor-exit v1

    .line 2919
    return-void

    .line 2924
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 2925
    const/4 v3, 0x1

    .line 2924
    invoke-virtual {v2, v3, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_47
    .catchall {:try_start_3b .. :try_end_47} :catchall_49

    monitor-exit v1

    .line 2927
    return-void

    .line 2915
    :catchall_49
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showMySoftInput(Landroid/os/IBinder;I)V
    .registers 7

    .prologue
    .line 3231
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3232
    return-void

    .line 3234
    :cond_7
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3235
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_24

    move-result v0

    if-nez v0, :cond_12

    monitor-exit v1

    .line 3236
    return-void

    .line 3238
    :cond_12
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_24

    move-result-wide v2

    .line 3240
    const/4 v0, 0x0

    :try_start_17
    invoke-virtual {p0, p2, v0}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1f

    .line 3242
    :try_start_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_24

    monitor-exit v1

    .line 3245
    return-void

    .line 3241
    :catchall_1f
    move-exception v0

    .line 3242
    :try_start_20
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3241
    throw v0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 3234
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 2545
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2546
    return v7

    .line 2548
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2551
    :try_start_10
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6b

    .line 2552
    :try_start_13
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_68

    if-eqz v4, :cond_19

    if-nez p1, :cond_4b

    .line 2558
    :cond_19
    :try_start_19
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v4, p1}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 2559
    const-string/jumbo v4, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring showSoftInput of uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_46} :catch_62
    .catchall {:try_start_19 .. :try_end_46} :catchall_68

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_6b

    .line 2571
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2560
    return v7

    .line 2553
    :cond_4b
    :try_start_4b
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v4, v4, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v4}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_19

    .line 2568
    :cond_59
    invoke-virtual {p0, p2, p3}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_5c
    .catchall {:try_start_4b .. :try_end_5c} :catchall_68

    move-result v0

    :try_start_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_6b

    .line 2571
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2568
    return v0

    .line 2562
    :catch_62
    move-exception v0

    :try_start_63
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_6b

    .line 2571
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2563
    return v7

    .line 2551
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v1

    throw v0
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_6b

    .line 2570
    :catchall_6b
    move-exception v0

    .line 2571
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2570
    throw v0
.end method

.method startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1906
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 1907
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1910
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_1b

    .line 1913
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1914
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    .line 1913
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    .line 1917
    :cond_1b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 1918
    if-nez v0, :cond_43

    .line 1919
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1922
    :cond_43
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->unbindCurrentMethodLocked(Z)V

    .line 1924
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.view.InputMethod"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 1925
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1926
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.client_label"

    .line 1927
    const v4, 0x104027c

    .line 1926
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1928
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.client_intent"

    .line 1929
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1928
    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1930
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    const v3, 0x40800005    # 4.0000024f

    invoke-direct {p0, v2, p0, v3}, Lcom/android/server/InputMethodManagerService;->bindCurrentInputMethodService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 1931
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    .line 1932
    iput-boolean v8, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 1933
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 1934
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 1938
    :try_start_9a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/16 v3, 0x7db

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_a4} :catch_d0

    .line 1942
    :goto_a4
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1943
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    move-object v2, v1

    .line 1942
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    .line 1946
    :cond_b1
    iput-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 1947
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failure connecting to input method service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1948
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    .line 1947
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    return-object v1

    .line 1939
    :catch_d0
    move-exception v0

    goto :goto_a4
.end method

.method startInputLocked(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 1788
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1789
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1792
    :cond_8
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mClients:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1793
    if-nez v1, :cond_34

    .line 1794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown client "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1795
    invoke-interface {p2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1794
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1798
    :cond_34
    if-nez p5, :cond_60

    .line 1799
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring startInput with null EditorInfo. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1800
    iget v3, v1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    .line 1799
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1800
    const-string/jumbo v3, " pid="

    .line 1799
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1800
    iget v1, v1, Lcom/android/server/InputMethodManagerService$ClientState;->pid:I

    .line 1799
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    return-object v4

    .line 1805
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v2, v1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_67} :catch_6b

    move-result v0

    if-nez v0, :cond_6c

    .line 1815
    return-object v4

    .line 1817
    :catch_6b
    move-exception v0

    :cond_6c
    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p1

    .line 1820
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0
.end method

.method public startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;
    .registers 17

    .prologue
    .line 2710
    if-eqz p3, :cond_7

    .line 2711
    invoke-direct/range {p0 .. p9}, Lcom/android/server/InputMethodManagerService;->windowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    :cond_7
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p8

    move/from16 v4, p9

    move-object v5, p7

    move v6, p4

    .line 2714
    invoke-direct/range {v0 .. v6}, Lcom/android/server/InputMethodManagerService;->startInput(ILcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0
.end method

.method startInputUncheckedLocked(Lcom/android/server/InputMethodManagerService$ClientState;Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;II)Lcom/android/internal/view/InputBindResult;
    .registers 13

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1830
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1838
    :cond_7
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    .line 1839
    iget-object v2, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1838
    invoke-static {v0, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1840
    const-string/jumbo v0, "InputMethodManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rejecting this client as it reported an invalid package name. uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1841
    iget v2, p1, Lcom/android/server/InputMethodManagerService$ClientState;->uid:I

    .line 1840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1841
    const-string/jumbo v2, " package="

    .line 1840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1841
    iget-object v2, p4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1840
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNoBinding:Lcom/android/internal/view/InputBindResult;

    return-object v0

    .line 1845
    :cond_3f
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eq v0, p1, :cond_63

    .line 1847
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->isKeyguardLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClientInKeyguard:Z

    .line 1850
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 1855
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_63

    .line 1856
    iget-object v1, p1, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1857
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mIsInteractive:Z

    if-eqz v0, :cond_94

    const/4 v0, 0x1

    :goto_5a
    const/16 v3, 0xbcc

    .line 1856
    invoke-virtual {v2, v3, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1862
    :cond_63
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1863
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    if-gtz v0, :cond_70

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1864
    :cond_70
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1865
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    .line 1866
    iput p3, p0, Lcom/android/server/InputMethodManagerService;->mCurInputContextMissingMethods:I

    .line 1867
    iput-object p4, p0, Lcom/android/server/InputMethodManagerService;->mCurAttribute:Landroid/view/inputmethod/EditorInfo;

    .line 1870
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    if-eqz v0, :cond_ef

    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 1871
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$ClientState;->curSession:Lcom/android/server/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_98

    .line 1875
    and-int/lit16 v0, p5, 0x100

    if-eqz v0, :cond_96

    const/4 v0, 0x1

    .line 1874
    :goto_8f
    invoke-virtual {p0, p6, v0}, Lcom/android/server/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0

    .line 1857
    :cond_94
    const/4 v0, 0x0

    goto :goto_5a

    .line 1875
    :cond_96
    const/4 v0, 0x0

    goto :goto_8f

    .line 1877
    :cond_98
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_ef

    .line 1878
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_b1

    .line 1881
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/InputMethodManagerService$ClientState;)V

    .line 1882
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1883
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 1882
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    .line 1884
    :cond_b1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1885
    iget-wide v2, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    .line 1884
    cmp-long v0, v0, v2

    if-gez v0, :cond_cc

    .line 1893
    new-instance v0, Lcom/android/internal/view/InputBindResult;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    .line 1894
    iget v5, p0, Lcom/android/server/InputMethodManagerService;->mCurUserActionNotificationSequenceNumber:I

    .line 1893
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/InputBindResult;-><init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V

    return-object v0

    .line 1896
    :cond_cc
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1897
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/InputMethodManagerService;->mLastBindTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1896
    const/16 v1, 0x7d00

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1902
    :cond_ef
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;

    move-result-object v0

    return-object v0
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 14

    .prologue
    .line 2967
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2968
    const/4 v0, 0x0

    return v0

    .line 2970
    :cond_8
    iget-object v5, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 2971
    :try_start_b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getLastInputMethodAndSubtypeLocked()Landroid/util/Pair;

    move-result-object v4

    .line 2973
    if-eqz v4, :cond_bd

    .line 2974
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    move-object v1, v0

    .line 2978
    :goto_1e
    const/4 v3, 0x0

    .line 2979
    const/4 v2, -0x1

    .line 2980
    if-eqz v4, :cond_48

    if-eqz v1, :cond_48

    .line 2981
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2982
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2983
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v0, :cond_c1

    const/4 v0, -0x1

    .line 2987
    :goto_3b
    if-eqz v6, :cond_3f

    if-eq v7, v0, :cond_48

    .line 2988
    :cond_3f
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2989
    invoke-static {v1, v7}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v2

    move-object v3, v0

    .line 2993
    :cond_48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 2994
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2993
    if-eqz v0, :cond_e5

    .line 2998
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v6

    .line 2999
    if-eqz v6, :cond_e5

    .line 3000
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 3001
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v0, :cond_cc

    .line 3002
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 3004
    :goto_75
    const/4 v0, 0x0

    move v4, v0

    :goto_77
    if-ge v4, v7, :cond_e5

    .line 3005
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 3006
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v8

    if-lez v8, :cond_d4

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 3008
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 3009
    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    move-result-object v9

    .line 3010
    const-string/jumbo v10, "keyboard"

    const/4 v11, 0x1

    .line 3008
    invoke-static {v8, v9, v10, v1, v11}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    .line 3011
    if-eqz v8, :cond_e2

    .line 3012
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3014
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v3

    .line 3013
    invoke-static {v0, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v0

    .line 3015
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 3024
    :goto_b1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_dc

    .line 3029
    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_ba
    .catchall {:try_start_b .. :try_end_ba} :catchall_df

    .line 3030
    const/4 v0, 0x1

    monitor-exit v5

    return v0

    .line 2976
    :cond_bd
    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_1e

    .line 2984
    :cond_c1
    :try_start_c1
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v0

    goto/16 :goto_3b

    :cond_c9
    move v0, v2

    move-object v2, v3

    .line 2994
    goto :goto_b1

    .line 3003
    :cond_cc
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;
    :try_end_d1
    .catchall {:try_start_c1 .. :try_end_d1} :catchall_df

    move-result-object v0

    move-object v1, v0

    goto :goto_75

    :cond_d4
    move v0, v2

    move-object v2, v3

    .line 3004
    :cond_d6
    :goto_d6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move v2, v0

    goto :goto_77

    .line 3032
    :cond_dc
    const/4 v0, 0x0

    monitor-exit v5

    return v0

    .line 2970
    :catchall_df
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_e2
    move v0, v2

    move-object v2, v3

    goto :goto_d6

    :cond_e5
    move v0, v2

    move-object v2, v3

    goto :goto_b1
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3039
    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3040
    return v5

    .line 3042
    :cond_9
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 3043
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_38

    move-result v0

    if-nez v0, :cond_14

    monitor-exit v1

    .line 3044
    return v5

    .line 3046
    :cond_14
    :try_start_14
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    .line 3047
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 3048
    const/4 v4, 0x1

    .line 3046
    invoke-virtual {v2, p2, v0, v3, v4}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Z)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_38

    move-result-object v0

    .line 3049
    if-nez v0, :cond_2b

    monitor-exit v1

    .line 3050
    return v5

    .line 3052
    :cond_2b
    :try_start_2b
    iget-object v2, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    .line 3053
    iget v0, v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    .line 3052
    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_38

    monitor-exit v1

    .line 3054
    return v6

    .line 3042
    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public systemRunning(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 9

    .prologue
    .line 1445
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1449
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    if-nez v0, :cond_d2

    .line 1450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mSystemReady:Z

    .line 1451
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mLastSystemLocales:Landroid/os/LocaleList;

    .line 1452
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 1453
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1454
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1453
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->switchCurrentUser(IZ)V

    .line 1455
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 1456
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1457
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 1458
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_4f

    .line 1459
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1461
    :cond_4f
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    iget v4, p0, Lcom/android/server/InputMethodManagerService;->mBackDisposition:I

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/InputMethodManagerService;->updateSystemUiLocked(Landroid/os/IBinder;II)V

    .line 1462
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 1463
    const v3, 0x11200e6

    .line 1462
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 1464
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    if-eqz v0, :cond_6e

    .line 1465
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 1466
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mHardKeyboardListener:Lcom/android/server/InputMethodManagerService$HardKeyboardListener;

    .line 1465
    invoke-virtual {v0, v3}, Landroid/view/WindowManagerInternal;->setOnHardKeyboardStatusChangeListener(Landroid/view/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V

    .line 1469
    :cond_6e
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/InputMethodManagerService$MyPackageMonitor;

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v5, v4, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1470
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/InputMethodManagerService$SettingsObserver;

    invoke-virtual {v0, v2}, Lcom/android/server/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 1472
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1473
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1474
    const-string/jumbo v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1475
    const-string/jumbo v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1476
    const-string/jumbo v3, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1477
    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1478
    const-string/jumbo v3, "com.android.server.InputMethodManagerService.SHOW_INPUT_METHOD_PICKER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1479
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/InputMethodManagerService$ImmsBroadcastReceiver;-><init>(Lcom/android/server/InputMethodManagerService;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1481
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1482
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 1483
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1484
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1485
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v3

    .line 1486
    iget-object v4, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    .line 1484
    invoke-static {v0, v3, v2, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_3 .. :try_end_cf} :catchall_df

    .line 1489
    :try_start_cf
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->startInputInnerLocked()Lcom/android/internal/view/InputBindResult;
    :try_end_d2
    .catch Ljava/lang/RuntimeException; {:try_start_cf .. :try_end_d2} :catch_d4
    .catchall {:try_start_cf .. :try_end_d2} :catchall_df

    :cond_d2
    :goto_d2
    monitor-exit v1

    .line 1495
    return-void

    .line 1490
    :catch_d4
    move-exception v0

    .line 1491
    :try_start_d5
    const-string/jumbo v2, "InputMethodManagerService"

    const-string/jumbo v3, "Unexpected exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_de
    .catchall {:try_start_d5 .. :try_end_de} :catchall_df

    goto :goto_d2

    .line 1445
    :catchall_df
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method unbindCurrentClientLocked(I)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1688
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_4e

    .line 1691
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    if-eqz v0, :cond_1f

    .line 1692
    iput-boolean v5, p0, Lcom/android/server/InputMethodManagerService;->mBoundToMethod:Z

    .line 1693
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_1f

    .line 1694
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1695
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    const/16 v3, 0x3e8

    .line 1694
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1699
    :cond_1f
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1700
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v3, 0xbcc

    .line 1699
    invoke-virtual {v1, v3, v5, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1701
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1702
    iget v2, p0, Lcom/android/server/InputMethodManagerService;->mCurSeq:I

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/16 v4, 0xbb8

    .line 1701
    invoke-virtual {v1, v4, v2, p1, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 1703
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iput-boolean v5, v0, Lcom/android/server/InputMethodManagerService$ClientState;->sessionRequested:Z

    .line 1704
    iput-object v6, p0, Lcom/android/server/InputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    .line 1706
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->hideInputMethodMenuLocked()V

    .line 1722
    :cond_4e
    return-void
.end method

.method unbindCurrentMethodLocked(Z)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2032
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v0, :cond_f

    .line 2033
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2034
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mVisibleBound:Z

    .line 2037
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    if-eqz v0, :cond_1a

    .line 2038
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2039
    iput-boolean v2, p0, Lcom/android/server/InputMethodManagerService;->mHaveConnection:Z

    .line 2042
    :cond_1a
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    if-eqz v0, :cond_35

    .line 2045
    :try_start_1e
    iget v0, p0, Lcom/android/server/InputMethodManagerService;->mImeWindowVis:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_2b

    .line 2047
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0}, Landroid/view/WindowManagerInternal;->saveLastInputMethodWindowForTransition()V

    .line 2049
    :cond_2b
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_33} :catch_3b

    .line 2052
    :goto_33
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurToken:Landroid/os/IBinder;

    .line 2055
    :cond_35
    iput-object v3, p0, Lcom/android/server/InputMethodManagerService;->mCurId:Ljava/lang/String;

    .line 2056
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->clearCurMethodLocked()V

    .line 2057
    return-void

    .line 2050
    :catch_3b
    move-exception v0

    goto :goto_33
.end method

.method updateCurrentProfileIds()V
    .registers 4

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1426
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 1425
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->setCurrentProfileIds([I)V

    .line 1427
    return-void
.end method

.method updateFromSettingsLocked(Z)V
    .registers 2

    .prologue
    .line 2394
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 2395
    invoke-virtual {p0}, Lcom/android/server/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V

    .line 2396
    return-void
.end method

.method updateInputMethodsFromSettingsLocked(Z)V
    .registers 11

    .prologue
    const/4 v8, 0x4

    const/4 v0, 0x0

    .line 2399
    if-eqz p1, :cond_4c

    .line 2400
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodListLocked()Ljava/util/ArrayList;

    move-result-object v7

    move v6, v0

    .line 2401
    :goto_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_4c

    .line 2404
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 2406
    :try_start_18
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2408
    iget-object v3, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v3}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v3

    .line 2407
    const v4, 0x8000

    .line 2406
    invoke-interface {v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2409
    if-eqz v0, :cond_48

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    if-ne v0, v8, :cond_48

    .line 2415
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2417
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v4

    .line 2418
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v5

    .line 2416
    const/4 v2, 0x0

    .line 2417
    const/4 v3, 0x1

    .line 2415
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_48} :catch_a4

    .line 2401
    :cond_48
    :goto_48
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_b

    .line 2428
    :cond_4c
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 2430
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-direct {p0}, Lcom/android/server/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 2431
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v0

    .line 2433
    :cond_64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 2435
    :try_start_6a
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1, v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V
    :try_end_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_73} :catch_80

    .line 2440
    :goto_73
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mShortcutInputMethodsAndSubtypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2449
    :goto_78
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingController:Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    .line 2451
    return-void

    .line 2436
    :catch_80
    move-exception v1

    .line 2437
    const-string/jumbo v2, "InputMethodManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown input method from prefs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2438
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    goto :goto_73

    .line 2443
    :cond_a0
    invoke-virtual {p0, v8}, Lcom/android/server/InputMethodManagerService;->resetCurrentMethodAndClient(I)V

    goto :goto_78

    .line 2420
    :catch_a4
    move-exception v0

    goto :goto_48
.end method

.method public updateKeyboardFromSettingsLocked()V
    .registers 3

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    .line 2455
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_28

    .line 2456
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    if-eqz v0, :cond_28

    .line 2457
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 2455
    if-eqz v0, :cond_28

    .line 2458
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mSwitchingDialogTitleView:Landroid/view/View;

    .line 2459
    const v1, 0x102028d

    .line 2458
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 2460
    iget-boolean v1, p0, Lcom/android/server/InputMethodManagerService;->mShowImeWithHardKeyboard:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2462
    :cond_28
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 14

    .prologue
    const/4 v5, 0x0

    .line 2145
    iget-object v6, p0, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 2146
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;->calledWithValidToken(Landroid/os/IBinder;)Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_5f

    move-result v0

    if-nez v0, :cond_c

    monitor-exit v6

    .line 2147
    return-void

    .line 2149
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_5f

    move-result-wide v8

    .line 2151
    if-nez p3, :cond_23

    .line 2153
    :try_start_12
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1e

    .line 2154
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_5a

    .line 2176
    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_5f

    monitor-exit v6

    .line 2179
    return-void

    .line 2156
    :cond_23
    if-eqz p2, :cond_1e

    .line 2161
    :try_start_25
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2163
    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 2164
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v2

    .line 2163
    const/4 v3, 0x0

    invoke-interface {v1, p2, v3, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2162
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_3b} :catch_62
    .catchall {:try_start_25 .. :try_end_3b} :catchall_5a

    move-result-object v0

    move-object v2, v0

    .line 2168
    :goto_3d
    :try_start_3d
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    if-eqz v0, :cond_1e

    .line 2169
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 2170
    if-eqz v2, :cond_4b

    .line 2171
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2169
    :cond_4b
    const/4 v4, 0x0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 2172
    iget-object v0, p0, Lcom/android/server/InputMethodManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerService;

    iget-object v1, p0, Lcom/android/server/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_5a

    goto :goto_1e

    .line 2175
    :catchall_5a
    move-exception v0

    .line 2176
    :try_start_5b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2175
    throw v0
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    .line 2145
    :catchall_5f
    move-exception v0

    monitor-exit v6

    throw v0

    .line 2165
    :catch_62
    move-exception v0

    move-object v2, v5

    goto :goto_3d
.end method

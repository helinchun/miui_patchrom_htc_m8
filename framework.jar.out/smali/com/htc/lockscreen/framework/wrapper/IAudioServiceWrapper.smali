.class public Lcom/htc/lockscreen/framework/wrapper/IAudioServiceWrapper;
.super Ljava/lang/Object;
.source "IAudioServiceWrapper.java"


# instance fields
.field private mService:Landroid/media/IAudioService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IAudioServiceWrapper;->mService:Landroid/media/IAudioService;

    if-nez v0, :cond_0

    .line 17
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/framework/wrapper/IAudioServiceWrapper;->mService:Landroid/media/IAudioService;

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 32
    return-void
.end method

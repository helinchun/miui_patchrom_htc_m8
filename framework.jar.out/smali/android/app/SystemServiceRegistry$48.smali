.class final Landroid/app/SystemServiceRegistry$48;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/view/WindowManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/view/WindowManager;
    .locals 2
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 537
    new-instance v0, Landroid/view/WindowManagerImpl;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;)V

    return-object v0
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$48;->createService(Landroid/app/ContextImpl;)Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

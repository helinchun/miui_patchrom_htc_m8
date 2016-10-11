.class public Lcom/htc/lockscreen/framework/wrapper/WindowManagerWrapper;
.super Ljava/lang/Object;
.source "WindowManagerWrapper.java"


# static fields
.field public static final INPUT_FEATURE_DISABLE_USER_ACTIVITY:I = 0x4

.field public static final OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final OFF_BECAUSE_OF_USER:I = 0x2

.field public static final PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED:I = 0x2

.field public static final TYPE_BOOT_PROGRESS:I = 0x7e5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInputFeatures(Landroid/view/WindowManager$LayoutParams;J)V
    .locals 3
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flag"    # J

    .prologue
    .line 27
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    int-to-long v0, v0

    or-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 28
    return-void
.end method

.method public static addPrivateFlags(Landroid/view/WindowManager$LayoutParams;J)V
    .locals 3
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flag"    # J

    .prologue
    .line 23
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    int-to-long v0, v0

    or-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 24
    return-void
.end method

.method public static userActivityTimeout(Landroid/view/WindowManager$LayoutParams;J)V
    .locals 1
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "timeout"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 20
    return-void
.end method

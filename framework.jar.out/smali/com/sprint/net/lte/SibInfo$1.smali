.class final Lcom/sprint/net/lte/SibInfo$1;
.super Ljava/lang/Object;
.source "SibInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/net/lte/SibInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sprint/net/lte/SibInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sprint/net/lte/SibInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    new-instance v0, Lcom/sprint/net/lte/SibInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sprint/net/lte/SibInfo;-><init>(Landroid/os/Parcel;Lcom/sprint/net/lte/SibInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/sprint/net/lte/SibInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sprint/net/lte/SibInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sprint/net/lte/SibInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 61
    new-array v0, p1, [Lcom/sprint/net/lte/SibInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/sprint/net/lte/SibInfo$1;->newArray(I)[Lcom/sprint/net/lte/SibInfo;

    move-result-object v0

    return-object v0
.end method

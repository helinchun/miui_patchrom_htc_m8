.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContentType:I

.field private mFlags:I

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 324
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 326
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v1, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 324
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 326
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 327
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 346
    # getter for: Landroid/media/AudioAttributes;->mUsage:I
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$000(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 347
    # getter for: Landroid/media/AudioAttributes;->mContentType:I
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$100(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 348
    # getter for: Landroid/media/AudioAttributes;->mFlags:I
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$200(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 349
    # getter for: Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$300(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 350
    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 459
    return-object p0
.end method

.method public build()Landroid/media/AudioAttributes;
    .locals 3

    .prologue
    .line 359
    new-instance v0, Landroid/media/AudioAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes$1;)V

    .line 360
    .local v0, "aa":Landroid/media/AudioAttributes;
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    # setter for: Landroid/media/AudioAttributes;->mContentType:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$102(Landroid/media/AudioAttributes;I)I

    .line 361
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    # setter for: Landroid/media/AudioAttributes;->mUsage:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$002(Landroid/media/AudioAttributes;I)I

    .line 362
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    # setter for: Landroid/media/AudioAttributes;->mSource:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$502(Landroid/media/AudioAttributes;I)I

    .line 363
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    # setter for: Landroid/media/AudioAttributes;->mFlags:I
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$202(Landroid/media/AudioAttributes;I)I

    .line 364
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    # setter for: Landroid/media/AudioAttributes;->mTags:Ljava/util/HashSet;
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$302(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 365
    const-string v1, ";"

    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/media/AudioAttributes;->mFormattedTags:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$602(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    return-object v0
.end method

.method public setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "preset"    # I

    .prologue
    .line 535
    packed-switch p1, :pswitch_data_0

    .line 544
    :pswitch_0
    const-string v0, "AudioAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capture preset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for AudioAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :goto_0
    return-object p0

    .line 541
    :pswitch_1
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    goto :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setContentType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "contentType"    # I

    .prologue
    .line 426
    packed-switch p1, :pswitch_data_0

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 437
    :goto_0
    return-object p0

    .line 432
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFlags(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 446
    and-int/lit16 p1, p1, 0xff

    .line 447
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 448
    return-object p0
.end method

.method public setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "preset"    # I

    .prologue
    .line 558
    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7ce

    if-ne p1, v0, :cond_1

    .line 561
    :cond_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 565
    :goto_0
    return-object p0

    .line 563
    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0
.end method

.method public setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 483
    packed-switch p1, :pswitch_data_0

    .line 516
    const-string v0, "AudioAttributes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for AudioAttributes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_0
    invoke-static {p1}, Landroid/media/AudioAttributes;->usageForLegacyStreamType(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 519
    return-object p0

    .line 485
    :pswitch_0
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 488
    :pswitch_1
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 491
    :pswitch_2
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 494
    :pswitch_3
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 497
    :pswitch_4
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 500
    :pswitch_5
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 503
    :pswitch_6
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 506
    :pswitch_7
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 507
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    goto :goto_0

    .line 510
    :pswitch_8
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 513
    :pswitch_9
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    goto :goto_0

    .line 483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 473
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setUsage(I)Landroid/media/AudioAttributes$Builder;
    .locals 1
    .param p1, "usage"    # I

    .prologue
    .line 389
    packed-switch p1, :pswitch_data_0

    .line 409
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 411
    :goto_0
    return-object p0

    .line 406
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    goto :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.class final Landroid/location/GpsMeasurement$1;
.super Ljava/lang/Object;
.source "GpsMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsMeasurement;
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
        "Landroid/location/GpsMeasurement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurement;
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1163
    new-instance v0, Landroid/location/GpsMeasurement;

    invoke-direct {v0}, Landroid/location/GpsMeasurement;-><init>()V

    .line 1165
    .local v0, "gpsMeasurement":Landroid/location/GpsMeasurement;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GpsMeasurement;->mFlags:I
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->access$002(Landroid/location/GpsMeasurement;I)I

    .line 1166
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    # setter for: Landroid/location/GpsMeasurement;->mPrn:B
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->access$102(Landroid/location/GpsMeasurement;B)B

    .line 1167
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$202(Landroid/location/GpsMeasurement;D)D

    .line 1168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    # setter for: Landroid/location/GpsMeasurement;->mState:S
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->access$302(Landroid/location/GpsMeasurement;S)S

    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$402(Landroid/location/GpsMeasurement;J)J

    .line 1170
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$502(Landroid/location/GpsMeasurement;J)J

    .line 1171
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mCn0InDbHz:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$602(Landroid/location/GpsMeasurement;D)D

    .line 1172
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$702(Landroid/location/GpsMeasurement;D)D

    .line 1173
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$802(Landroid/location/GpsMeasurement;D)D

    .line 1174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    # setter for: Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->access$902(Landroid/location/GpsMeasurement;S)S

    .line 1175
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$1002(Landroid/location/GpsMeasurement;D)D

    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$1102(Landroid/location/GpsMeasurement;D)D

    .line 1177
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$1202(Landroid/location/GpsMeasurement;D)D

    .line 1178
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$1302(Landroid/location/GpsMeasurement;D)D

    .line 1179
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mCodePhaseInChips:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$1402(Landroid/location/GpsMeasurement;D)D

    .line 1180
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$1502(Landroid/location/GpsMeasurement;D)D

    .line 1181
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->access$1602(Landroid/location/GpsMeasurement;F)F

    .line 1182
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mCarrierCycles:J
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$1702(Landroid/location/GpsMeasurement;J)J

    .line 1183
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mCarrierPhase:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$1802(Landroid/location/GpsMeasurement;D)D

    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$1902(Landroid/location/GpsMeasurement;D)D

    .line 1185
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    # setter for: Landroid/location/GpsMeasurement;->mLossOfLock:B
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->access$2002(Landroid/location/GpsMeasurement;B)B

    .line 1186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Landroid/location/GpsMeasurement;->mBitNumber:I
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->access$2102(Landroid/location/GpsMeasurement;I)I

    .line 1187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    # setter for: Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->access$2202(Landroid/location/GpsMeasurement;S)S

    .line 1188
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$2302(Landroid/location/GpsMeasurement;D)D

    .line 1189
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$2402(Landroid/location/GpsMeasurement;D)D

    .line 1190
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    # setter for: Landroid/location/GpsMeasurement;->mMultipathIndicator:B
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->access$2502(Landroid/location/GpsMeasurement;B)B

    .line 1191
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mSnrInDb:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$2602(Landroid/location/GpsMeasurement;D)D

    .line 1192
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mElevationInDeg:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$2702(Landroid/location/GpsMeasurement;D)D

    .line 1193
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$2802(Landroid/location/GpsMeasurement;D)D

    .line 1194
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mAzimuthInDeg:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$2902(Landroid/location/GpsMeasurement;D)D

    .line 1195
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    # setter for: Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D
    invoke-static {v0, v2, v3}, Landroid/location/GpsMeasurement;->access$3002(Landroid/location/GpsMeasurement;D)D

    .line 1196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    # setter for: Landroid/location/GpsMeasurement;->mUsedInFix:Z
    invoke-static {v0, v1}, Landroid/location/GpsMeasurement;->access$3102(Landroid/location/GpsMeasurement;Z)Z

    .line 1198
    return-object v0

    .line 1196
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1160
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurement$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/GpsMeasurement;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/GpsMeasurement;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 1203
    new-array v0, p1, [Landroid/location/GpsMeasurement;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1160
    invoke-virtual {p0, p1}, Landroid/location/GpsMeasurement$1;->newArray(I)[Landroid/location/GpsMeasurement;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lorg/wikipedia/edit/EditResult;
.super Lorg/wikipedia/model/BaseModel;
.source "EditResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final result:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/edit/EditResult;->result:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/wikipedia/model/BaseModel;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/wikipedia/edit/EditResult;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/wikipedia/edit/EditResult;->result:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    iget-object p2, p0, Lorg/wikipedia/edit/EditResult;->result:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

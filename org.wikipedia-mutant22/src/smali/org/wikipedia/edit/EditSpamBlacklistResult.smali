.class public Lorg/wikipedia/edit/EditSpamBlacklistResult;
.super Lorg/wikipedia/edit/EditResult;
.source "EditSpamBlacklistResult.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/edit/EditSpamBlacklistResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final domain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/wikipedia/edit/EditSpamBlacklistResult$1;

    invoke-direct {v0}, Lorg/wikipedia/edit/EditSpamBlacklistResult$1;-><init>()V

    sput-object v0, Lorg/wikipedia/edit/EditSpamBlacklistResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/EditResult;-><init>(Landroid/os/Parcel;)V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/edit/EditSpamBlacklistResult;->domain:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Failure"

    .line 9
    invoke-direct {p0, v0}, Lorg/wikipedia/edit/EditResult;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lorg/wikipedia/edit/EditSpamBlacklistResult;->domain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/wikipedia/edit/EditSpamBlacklistResult;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 24
    invoke-super {p0, p1, p2}, Lorg/wikipedia/edit/EditResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 25
    iget-object p2, p0, Lorg/wikipedia/edit/EditSpamBlacklistResult;->domain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

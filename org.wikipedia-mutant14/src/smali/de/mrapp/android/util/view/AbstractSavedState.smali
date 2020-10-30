.class public abstract Lde/mrapp/android/util/view/AbstractSavedState;
.super Ljava/lang/Object;
.source "AbstractSavedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final superState:Landroid/os/Parcelable;


# direct methods
.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lde/mrapp/android/util/view/AbstractSavedState;->superState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getSuperState()Landroid/os/Parcelable;
    .locals 1

    .line 75
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractSavedState;->superState:Landroid/os/Parcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lde/mrapp/android/util/view/AbstractSavedState;->superState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

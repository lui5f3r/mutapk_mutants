.class final Lorg/wikipedia/history/HistoryEntry$1;
.super Ljava/lang/Object;
.source "HistoryEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/history/HistoryEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/wikipedia/history/HistoryEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryEntry$1;->createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/history/HistoryEntry;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/history/HistoryEntry;
    .locals 2

    .line 151
    new-instance v0, Lorg/wikipedia/history/HistoryEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Landroid/os/Parcel;Lorg/wikipedia/history/HistoryEntry$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lorg/wikipedia/history/HistoryEntry$1;->newArray(I)[Lorg/wikipedia/history/HistoryEntry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/wikipedia/history/HistoryEntry;
    .locals 0

    .line 156
    new-array p1, p1, [Lorg/wikipedia/history/HistoryEntry;

    return-object p1
.end method

.class final Lorg/wikipedia/search/RecentSearch$1;
.super Ljava/lang/Object;
.source "RecentSearch.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/RecentSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/wikipedia/search/RecentSearch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lorg/wikipedia/search/RecentSearch$1;->createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/search/RecentSearch;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/wikipedia/search/RecentSearch;
    .locals 2

    .line 73
    new-instance v0, Lorg/wikipedia/search/RecentSearch;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/wikipedia/search/RecentSearch;-><init>(Landroid/os/Parcel;Lorg/wikipedia/search/RecentSearch$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lorg/wikipedia/search/RecentSearch$1;->newArray(I)[Lorg/wikipedia/search/RecentSearch;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/wikipedia/search/RecentSearch;
    .locals 0

    .line 78
    new-array p1, p1, [Lorg/wikipedia/search/RecentSearch;

    return-object p1
.end method

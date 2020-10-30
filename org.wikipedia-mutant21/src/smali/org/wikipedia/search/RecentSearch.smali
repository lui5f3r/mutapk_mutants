.class public Lorg/wikipedia/search/RecentSearch;
.super Ljava/lang/Object;
.source "RecentSearch.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/search/RecentSearch;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATABASE_TABLE:Lorg/wikipedia/search/RecentSearchDatabaseTable;


# instance fields
.field private final text:Ljava/lang/String;

.field private final timestamp:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lorg/wikipedia/search/RecentSearchDatabaseTable;

    invoke-direct {v0}, Lorg/wikipedia/search/RecentSearchDatabaseTable;-><init>()V

    sput-object v0, Lorg/wikipedia/search/RecentSearch;->DATABASE_TABLE:Lorg/wikipedia/search/RecentSearchDatabaseTable;

    .line 69
    new-instance v0, Lorg/wikipedia/search/RecentSearch$1;

    invoke-direct {v0}, Lorg/wikipedia/search/RecentSearch$1;-><init>()V

    sput-object v0, Lorg/wikipedia/search/RecentSearch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/search/RecentSearch;->text:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/wikipedia/search/RecentSearch;->timestamp:Ljava/util/Date;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/wikipedia/search/RecentSearch$1;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/wikipedia/search/RecentSearch;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/search/RecentSearch;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/wikipedia/search/RecentSearch;->text:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lorg/wikipedia/search/RecentSearch;->timestamp:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 33
    instance-of v0, p1, Lorg/wikipedia/search/RecentSearch;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 36
    :cond_0
    check-cast p1, Lorg/wikipedia/search/RecentSearch;

    .line 37
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearch;->text:Ljava/lang/String;

    iget-object p1, p1, Lorg/wikipedia/search/RecentSearch;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearch;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearch;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/wikipedia/search/RecentSearch;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecentSearch{text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/wikipedia/search/RecentSearch;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/wikipedia/search/RecentSearch;->timestamp:Ljava/util/Date;

    .line 49
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lorg/wikipedia/search/RecentSearch;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lorg/wikipedia/search/RecentSearch;->getTimestamp()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.class public Lorg/wikipedia/history/HistoryEntry;
.super Ljava/lang/Object;
.source "HistoryEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/wikipedia/history/HistoryEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATABASE_TABLE:Lorg/wikipedia/history/HistoryEntryDatabaseTable;

.field public static final SOURCE_APP_SHORTCUT_CONTINUE_READING:I = 0x15

.field public static final SOURCE_APP_SHORTCUT_RANDOM:I = 0x14

.field public static final SOURCE_DISAMBIG:I = 0xa

.field public static final SOURCE_EDIT_DESCRIPTION:I = 0x1c

.field public static final SOURCE_EXTERNAL_LINK:I = 0x3

.field public static final SOURCE_FEED_BECAUSE_YOU_READ:I = 0xd

.field public static final SOURCE_FEED_CONTINUE_READING:I = 0xc

.field public static final SOURCE_FEED_FEATURED:I = 0xf

.field public static final SOURCE_FEED_MAIN_PAGE:I = 0x11

.field public static final SOURCE_FEED_MOST_READ:I = 0xe

.field public static final SOURCE_FEED_MOST_READ_ACTIVITY:I = 0x16

.field public static final SOURCE_FEED_RANDOM:I = 0x12

.field public static final SOURCE_FLOATING_QUEUE:I = 0x1b

.field public static final SOURCE_GALLERY:I = 0x13

.field public static final SOURCE_HISTORY:I = 0x4

.field public static final SOURCE_INTERNAL_LINK:I = 0x2

.field public static final SOURCE_LANGUAGE_LINK:I = 0x6

.field public static final SOURCE_MAIN_PAGE:I = 0x8

.field public static final SOURCE_NEWS:I = 0x10

.field public static final SOURCE_NOTIFICATION:I = 0x19

.field public static final SOURCE_NOTIFICATION_SYSTEM:I = 0x1a

.field public static final SOURCE_ON_THIS_DAY_ACTIVITY:I = 0x18

.field public static final SOURCE_ON_THIS_DAY_CARD:I = 0x17

.field public static final SOURCE_RANDOM:I = 0x7

.field public static final SOURCE_READING_LIST:I = 0xb

.field public static final SOURCE_SEARCH:I = 0x1

.field public static final SOURCE_SUGGESTED_EDITS:I = 0x1e

.field public static final SOURCE_TALK_TOPIC:I = 0x1f

.field public static final SOURCE_WIDGET:I = 0x1d


# instance fields
.field private referrer:Ljava/lang/String;

.field private final source:I

.field private final timeSpentSec:I

.field private final timestamp:Ljava/util/Date;

.field private final title:Lorg/wikipedia/page/PageTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/wikipedia/history/HistoryEntryDatabaseTable;

    invoke-direct {v0}, Lorg/wikipedia/history/HistoryEntryDatabaseTable;-><init>()V

    sput-object v0, Lorg/wikipedia/history/HistoryEntry;->DATABASE_TABLE:Lorg/wikipedia/history/HistoryEntryDatabaseTable;

    .line 147
    new-instance v0, Lorg/wikipedia/history/HistoryEntry$1;

    invoke-direct {v0}, Lorg/wikipedia/history/HistoryEntry$1;-><init>()V

    sput-object v0, Lorg/wikipedia/history/HistoryEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const-class v0, Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/page/PageTitle;

    iput-object v0, p0, Lorg/wikipedia/history/HistoryEntry;->title:Lorg/wikipedia/page/PageTitle;

    .line 141
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/wikipedia/history/HistoryEntry;->timeSpentSec:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/history/HistoryEntry;->referrer:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/wikipedia/history/HistoryEntry$1;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;I)V
    .locals 1

    .line 68
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/util/Date;I)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Ljava/util/Date;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/wikipedia/history/HistoryEntry;-><init>(Lorg/wikipedia/page/PageTitle;Ljava/util/Date;II)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/page/PageTitle;Ljava/util/Date;II)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/wikipedia/history/HistoryEntry;->title:Lorg/wikipedia/page/PageTitle;

    .line 58
    iput-object p2, p0, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 59
    iput p3, p0, Lorg/wikipedia/history/HistoryEntry;->source:I

    .line 60
    iput p4, p0, Lorg/wikipedia/history/HistoryEntry;->timeSpentSec:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 97
    instance-of v0, p1, Lorg/wikipedia/history/HistoryEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    check-cast p1, Lorg/wikipedia/history/HistoryEntry;

    .line 101
    iget-object v0, p0, Lorg/wikipedia/history/HistoryEntry;->title:Lorg/wikipedia/page/PageTitle;

    iget-object v2, p1, Lorg/wikipedia/history/HistoryEntry;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v2}, Lorg/wikipedia/page/PageTitle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    iget-object v2, p1, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/wikipedia/history/HistoryEntry;->source:I

    iget p1, p1, Lorg/wikipedia/history/HistoryEntry;->source:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/wikipedia/history/HistoryEntry;->referrer:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/wikipedia/history/HistoryEntry;->source:I

    return v0
.end method

.method public getTimeSpentSec()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/wikipedia/history/HistoryEntry;->timeSpentSec:I

    return v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Lorg/wikipedia/page/PageTitle;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/wikipedia/history/HistoryEntry;->title:Lorg/wikipedia/page/PageTitle;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/wikipedia/history/HistoryEntry;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0}, Lorg/wikipedia/page/PageTitle;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget v1, p0, Lorg/wikipedia/history/HistoryEntry;->source:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v1, p0, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 111
    iget v1, p0, Lorg/wikipedia/history/HistoryEntry;->timeSpentSec:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/wikipedia/history/HistoryEntry;->referrer:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HistoryEntry{title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/wikipedia/history/HistoryEntry;->title:Lorg/wikipedia/page/PageTitle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/wikipedia/history/HistoryEntry;->source:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/wikipedia/history/HistoryEntry;->timestamp:Ljava/util/Date;

    .line 120
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeSpentSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/wikipedia/history/HistoryEntry;->timeSpentSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryEntry;->getTitle()Lorg/wikipedia/page/PageTitle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 133
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryEntry;->getTimestamp()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 134
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryEntry;->getSource()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {p0}, Lorg/wikipedia/history/HistoryEntry;->getTimeSpentSec()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-object p2, p0, Lorg/wikipedia/history/HistoryEntry;->referrer:Ljava/lang/String;

    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

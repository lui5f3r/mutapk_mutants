.class public Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;
.super Ljava/lang/Object;
.source "SyncedReadingLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/sync/SyncedReadingLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteReadingListEntry"
.end annotation


# instance fields
.field private created:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private deleted:Z

.field private id:J

.field private listId:J

.field private project:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private summary:Lorg/wikipedia/dataclient/page/PageSummary;

.field private title:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private updated:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project:Ljava/lang/String;

    .line 95
    sget-object p1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p2, p1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public id()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->id:J

    return-wide v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->deleted:Z

    return v0
.end method

.method public listId()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->listId:J

    return-wide v0
.end method

.method public project()Ljava/lang/String;
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->project:Ljava/lang/String;

    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public summary()Lorg/wikipedia/dataclient/page/PageSummary;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->summary:Lorg/wikipedia/dataclient/page/PageSummary;

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->title:Ljava/lang/String;

    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatedDate()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingListEntry;->updated:Ljava/lang/String;

    return-object v0
.end method

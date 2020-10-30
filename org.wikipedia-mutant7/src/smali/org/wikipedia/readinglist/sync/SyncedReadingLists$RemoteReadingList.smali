.class public Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;
.super Ljava/lang/Object;
.source "SyncedReadingLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/readinglist/sync/SyncedReadingLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteReadingList"
.end annotation


# instance fields
.field private created:Ljava/lang/String;
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private deleted:Z

.field private description:Ljava/lang/String;

.field private id:J
    .annotation runtime Lorg/wikipedia/json/annotations/Required;
    .end annotation
.end field

.field private isDefault:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private name:Ljava/lang/String;
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

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name:Ljava/lang/String;

    .line 53
    invoke-static {p2}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {p1, p2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public description()Ljava/lang/String;
    .locals 2

    .line 65
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->description:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public id()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->id:J

    return-wide v0
.end method

.method public isDefault()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->isDefault:Z

    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->deleted:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->name:Ljava/lang/String;

    sget-object v1, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatedDate()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/wikipedia/readinglist/sync/SyncedReadingLists$RemoteReadingList;->updated:Ljava/lang/String;

    return-object v0
.end method

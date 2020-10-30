.class public final Lorg/wikipedia/dataclient/mwapi/UserContribution;
.super Ljava/lang/Object;
.source "UserContribution.kt"


# instance fields
.field private final comment:Ljava/lang/String;

.field private final minor:Z

.field private final new:Z

.field private final ns:I

.field private final pageid:I

.field private final parentid:J

.field private parsedDate:Ljava/util/Date;

.field private final revid:J

.field private final size:I

.field private final sizediff:I

.field private final tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final top:Z

.field private final user:Ljava/lang/String;

.field private final userid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->user:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->title:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->timestamp:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->comment:Ljava/lang/String;

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-string v1, "Collections.emptyList()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->tags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final date()Ljava/util/Date;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parsedDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 28
    :try_start_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->timestamp:Ljava/lang/String;

    invoke-static {v0}, Lorg/wikipedia/util/DateUtil;->iso8601DateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parsedDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parsedDate:Ljava/util/Date;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getComment()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public final getMinor()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->minor:Z

    return v0
.end method

.method public final getNew()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->new:Z

    return v0
.end method

.method public final getNs()I
    .locals 1

    .line 13
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->ns:I

    return v0
.end method

.method public final getPageid()I
    .locals 1

    .line 10
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->pageid:I

    return v0
.end method

.method public final getParentid()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->parentid:J

    return-wide v0
.end method

.method public final getRevid()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->revid:J

    return-wide v0
.end method

.method public final getSize()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->size:I

    return v0
.end method

.method public final getSizediff()I
    .locals 1

    .line 22
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->sizediff:I

    return v0
.end method

.method public final getTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->tags:Ljava/util/List;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTop()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->top:Z

    return v0
.end method

.method public final getUser()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->user:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserid()I
    .locals 1

    .line 8
    iget v0, p0, Lorg/wikipedia/dataclient/mwapi/UserContribution;->userid:I

    return v0
.end method

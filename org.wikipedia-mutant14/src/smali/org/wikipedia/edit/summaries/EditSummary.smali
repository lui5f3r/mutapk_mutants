.class public Lorg/wikipedia/edit/summaries/EditSummary;
.super Ljava/lang/Object;
.source "EditSummary.java"


# static fields
.field public static final DATABASE_TABLE:Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;


# instance fields
.field private final lastUsed:Ljava/util/Date;

.field private final summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;

    invoke-direct {v0}, Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;-><init>()V

    sput-object v0, Lorg/wikipedia/edit/summaries/EditSummary;->DATABASE_TABLE:Lorg/wikipedia/edit/summaries/EditSummaryDatabaseTable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/wikipedia/edit/summaries/EditSummary;->summary:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lorg/wikipedia/edit/summaries/EditSummary;->lastUsed:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getLastUsed()Ljava/util/Date;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummary;->lastUsed:Ljava/util/Date;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/wikipedia/edit/summaries/EditSummary;->summary:Ljava/lang/String;

    return-object v0
.end method

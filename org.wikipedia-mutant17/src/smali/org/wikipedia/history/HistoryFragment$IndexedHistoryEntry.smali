.class public Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;
.super Ljava/lang/Object;
.source "HistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/history/HistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexedHistoryEntry"
.end annotation


# instance fields
.field private final entry:Lorg/wikipedia/history/HistoryEntry;

.field private final imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    sget-object v0, Lorg/wikipedia/history/HistoryEntry;->DATABASE_TABLE:Lorg/wikipedia/history/HistoryEntryDatabaseTable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/history/HistoryEntryDatabaseTable;->fromCursor(Landroid/database/Cursor;)Lorg/wikipedia/history/HistoryEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->entry:Lorg/wikipedia/history/HistoryEntry;

    .line 296
    sget-object v0, Lorg/wikipedia/database/contract/PageHistoryContract$PageWithImage;->IMAGE_NAME:Lorg/wikipedia/database/column/StrColumn;

    invoke-virtual {v0, p1}, Lorg/wikipedia/database/column/StrColumn;->val(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->imageUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntry()Lorg/wikipedia/history/HistoryEntry;
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->entry:Lorg/wikipedia/history/HistoryEntry;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/wikipedia/history/HistoryFragment$IndexedHistoryEntry;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

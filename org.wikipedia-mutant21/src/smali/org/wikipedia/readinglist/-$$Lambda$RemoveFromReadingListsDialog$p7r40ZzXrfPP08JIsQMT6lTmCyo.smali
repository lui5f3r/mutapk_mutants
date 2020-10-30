.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:[Z

.field public final synthetic f$3:Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;[Ljava/lang/String;[ZLorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;->f$0:Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;

    iput-object p2, p0, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;->f$2:[Z

    iput-object p4, p0, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;->f$3:Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;->f$0:Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;

    iget-object v1, p0, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;->f$2:[Z

    iget-object v3, p0, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$p7r40ZzXrfPP08JIsQMT6lTmCyo;->f$3:Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->lambda$showDialog$0$RemoveFromReadingListsDialog([Ljava/lang/String;[ZLorg/wikipedia/readinglist/RemoveFromReadingListsDialog$Callback;Landroid/content/DialogInterface;I)V

    return-void
.end method

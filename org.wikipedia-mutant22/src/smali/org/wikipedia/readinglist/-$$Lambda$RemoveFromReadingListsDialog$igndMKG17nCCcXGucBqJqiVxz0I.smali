.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$igndMKG17nCCcXGucBqJqiVxz0I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic f$0:[Z


# direct methods
.method public synthetic constructor <init>([Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$igndMKG17nCCcXGucBqJqiVxz0I;->f$0:[Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$RemoveFromReadingListsDialog$igndMKG17nCCcXGucBqJqiVxz0I;->f$0:[Z

    invoke-static {v0, p1, p2, p3}, Lorg/wikipedia/readinglist/RemoveFromReadingListsDialog;->lambda$showDialog$1([ZLandroid/content/DialogInterface;IZ)V

    return-void
.end method

.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListSyncBehaviorDialogs$KDfz5hu6VOsuY4kWJd_hrBMiimQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListSyncBehaviorDialogs$KDfz5hu6VOsuY4kWJd_hrBMiimQ;->f$0:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListSyncBehaviorDialogs$KDfz5hu6VOsuY4kWJd_hrBMiimQ;->f$0:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lorg/wikipedia/readinglist/ReadingListSyncBehaviorDialogs;->lambda$detectedRemoteTornDownDialog$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
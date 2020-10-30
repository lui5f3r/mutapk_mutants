.class public Lde/mrapp/android/tabswitcher/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/Tab$Callback;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lde/mrapp/android/tabswitcher/Tab;",
            ">;"
        }
    .end annotation
.end field

.field public static final WAS_SHOWN_PARAMETER:Ljava/lang/String;


# instance fields
.field private backgroundColor:Landroid/content/res/ColorStateList;

.field private final callbacks:Lde/mrapp/util/datastructure/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/mrapp/util/datastructure/ListenerList<",
            "Lde/mrapp/android/tabswitcher/Tab$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private closeButtonIconBitmap:Landroid/graphics/Bitmap;

.field private closeButtonIconId:I

.field private closeButtonIconTintList:Landroid/content/res/ColorStateList;

.field private closeButtonIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private closeable:Z

.field private contentBackgroundColor:I

.field private iconBitmap:Landroid/graphics/Bitmap;

.field private iconId:I

.field private iconTintList:Landroid/content/res/ColorStateList;

.field private iconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private parameters:Landroid/os/Bundle;

.field private progressBarColor:I

.field private progressBarShown:Z

.field private title:Ljava/lang/CharSequence;

.field private titleTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "::wasShown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/mrapp/android/tabswitcher/Tab;->WAS_SHOWN_PARAMETER:Ljava/lang/String;

    .line 55
    new-instance v0, Lde/mrapp/android/tabswitcher/Tab$1;

    invoke-direct {v0}, Lde/mrapp/android/tabswitcher/Tab$1;-><init>()V

    sput-object v0, Lde/mrapp/android/tabswitcher/Tab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {v0}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->callbacks:Lde/mrapp/util/datastructure/ListenerList;

    .line 336
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->title:Ljava/lang/CharSequence;

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconId:I

    .line 338
    const-class v0, Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconBitmap:Landroid/graphics/Bitmap;

    .line 339
    const-class v0, Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconTintList:Landroid/content/res/ColorStateList;

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeable:Z

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconId:I

    .line 343
    const-class v0, Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconBitmap:Landroid/graphics/Bitmap;

    .line 344
    const-class v0, Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconTintList:Landroid/content/res/ColorStateList;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 346
    const-class v0, Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->backgroundColor:Landroid/content/res/ColorStateList;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/Tab;->contentBackgroundColor:I

    .line 348
    const-class v0, Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->titleTextColor:Landroid/content/res/ColorStateList;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lde/mrapp/android/tabswitcher/Tab;->progressBarShown:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lde/mrapp/android/tabswitcher/Tab;->progressBarColor:I

    .line 351
    const-class v0, Lde/mrapp/android/tabswitcher/Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lde/mrapp/android/tabswitcher/Tab;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lde/mrapp/android/tabswitcher/Tab$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lde/mrapp/android/tabswitcher/Tab;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lde/mrapp/util/datastructure/ListenerList;

    invoke-direct {v0}, Lde/mrapp/util/datastructure/ListenerList;-><init>()V

    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->callbacks:Lde/mrapp/util/datastructure/ListenerList;

    .line 362
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/Tab;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 363
    iput-boolean p1, p0, Lde/mrapp/android/tabswitcher/Tab;->closeable:Z

    const/4 p1, -0x1

    .line 364
    iput p1, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconId:I

    const/4 v0, 0x0

    .line 365
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconBitmap:Landroid/graphics/Bitmap;

    .line 366
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconTintList:Landroid/content/res/ColorStateList;

    .line 367
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 368
    iput p1, p0, Lde/mrapp/android/tabswitcher/Tab;->iconId:I

    .line 369
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconBitmap:Landroid/graphics/Bitmap;

    .line 370
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconTintList:Landroid/content/res/ColorStateList;

    .line 371
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 372
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->backgroundColor:Landroid/content/res/ColorStateList;

    .line 373
    iput p1, p0, Lde/mrapp/android/tabswitcher/Tab;->contentBackgroundColor:I

    .line 374
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->titleTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    .line 375
    iput-boolean v1, p0, Lde/mrapp/android/tabswitcher/Tab;->progressBarShown:Z

    .line 376
    iput p1, p0, Lde/mrapp/android/tabswitcher/Tab;->progressBarColor:I

    .line 377
    iput-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method private notifyOnCloseButtonIconChanged()V
    .locals 2

    .line 278
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->callbacks:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/Tab$Callback;

    .line 279
    invoke-interface {v1, p0}, Lde/mrapp/android/tabswitcher/Tab$Callback;->onCloseButtonIconChanged(Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnCloseableChanged()V
    .locals 2

    .line 269
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->callbacks:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/Tab$Callback;

    .line 270
    invoke-interface {v1, p0}, Lde/mrapp/android/tabswitcher/Tab$Callback;->onCloseableChanged(Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnIconChanged()V
    .locals 2

    .line 260
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->callbacks:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/Tab$Callback;

    .line 261
    invoke-interface {v1, p0}, Lde/mrapp/android/tabswitcher/Tab$Callback;->onIconChanged(Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTitleChanged()V
    .locals 2

    .line 251
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->callbacks:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/Tab$Callback;

    .line 252
    invoke-interface {v1, p0}, Lde/mrapp/android/tabswitcher/Tab$Callback;->onTitleChanged(Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTitleTextColorChanged()V
    .locals 2

    .line 305
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->callbacks:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0}, Lde/mrapp/util/datastructure/ListenerList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/mrapp/android/tabswitcher/Tab$Callback;

    .line 306
    invoke-interface {v1, p0}, Lde/mrapp/android/tabswitcher/Tab$Callback;->onTitleTextColorChanged(Lde/mrapp/android/tabswitcher/Tab;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addCallback(Lde/mrapp/android/tabswitcher/Tab$Callback;)V
    .locals 2

    .line 821
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The callback may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->callbacks:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 663
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->backgroundColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getCloseButtonIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 565
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iget v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 568
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 570
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 571
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCloseButtonIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 608
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getCloseButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 640
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getContentBackgroundColor()I
    .locals 1

    .line 697
    iget v0, p0, Lde/mrapp/android/tabswitcher/Tab;->contentBackgroundColor:I

    return v0
.end method

.method public final getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 444
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The context may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iget v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 447
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 449
    :cond_0
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lde/mrapp/android/tabswitcher/Tab;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 519
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    .line 798
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getProgressBarColor()I
    .locals 1

    .line 774
    iget v0, p0, Lde/mrapp/android/tabswitcher/Tab;->progressBarColor:I

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 402
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 720
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->titleTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final isCloseable()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeable:Z

    return v0
.end method

.method public final isProgressBarShown()Z
    .locals 1

    .line 752
    iget-boolean v0, p0, Lde/mrapp/android/tabswitcher/Tab;->progressBarShown:Z

    return v0
.end method

.method public final removeCallback(Lde/mrapp/android/tabswitcher/Tab$Callback;)V
    .locals 2

    .line 834
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The callback may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->callbacks:Lde/mrapp/util/datastructure/ListenerList;

    invoke-virtual {v0, p1}, Lde/mrapp/util/datastructure/ListenerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setCloseButtonIcon(I)V
    .locals 0

    .line 583
    iput p1, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconId:I

    const/4 p1, 0x0

    .line 584
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconBitmap:Landroid/graphics/Bitmap;

    .line 585
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/Tab;->notifyOnCloseButtonIconChanged()V

    return-void
.end method

.method public final setCloseButtonIconTint(I)V
    .locals 0

    .line 618
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/Tab;->setCloseButtonIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setCloseButtonIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconTintList:Landroid/content/res/ColorStateList;

    .line 630
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/Tab;->notifyOnCloseButtonIconChanged()V

    return-void
.end method

.method public final setCloseable(Z)V
    .locals 0

    .line 550
    iput-boolean p1, p0, Lde/mrapp/android/tabswitcher/Tab;->closeable:Z

    .line 551
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/Tab;->notifyOnCloseableChanged()V

    return-void
.end method

.method public final setIcon(I)V
    .locals 0

    .line 462
    iput p1, p0, Lde/mrapp/android/tabswitcher/Tab;->iconId:I

    const/4 p1, 0x0

    .line 463
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/Tab;->iconBitmap:Landroid/graphics/Bitmap;

    .line 464
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/Tab;->notifyOnIconChanged()V

    return-void
.end method

.method public final setIconTint(I)V
    .locals 0

    .line 497
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/Tab;->setIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/Tab;->iconTintList:Landroid/content/res/ColorStateList;

    .line 509
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/Tab;->notifyOnIconChanged()V

    return-void
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/Tab;->parameters:Landroid/os/Bundle;

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 413
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The title may not be null"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lde/mrapp/util/Condition;->INSTANCE:Lde/mrapp/util/Condition;

    const-string v1, "The title may not be empty"

    invoke-virtual {v0, p1, v1}, Lde/mrapp/util/Condition;->ensureNotEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 415
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/Tab;->title:Ljava/lang/CharSequence;

    .line 416
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/Tab;->notifyOnTitleChanged()V

    return-void
.end method

.method public final setTitleTextColor(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 731
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lde/mrapp/android/tabswitcher/Tab;->setTitleTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lde/mrapp/android/tabswitcher/Tab;->titleTextColor:Landroid/content/res/ColorStateList;

    .line 743
    invoke-direct {p0}, Lde/mrapp/android/tabswitcher/Tab;->notifyOnTitleTextColorChanged()V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 845
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 846
    iget v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 848
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 849
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->iconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 850
    iget-boolean v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    iget v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 853
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 854
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->closeButtonIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 855
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->backgroundColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 856
    iget v0, p0, Lde/mrapp/android/tabswitcher/Tab;->contentBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget-object v0, p0, Lde/mrapp/android/tabswitcher/Tab;->titleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 858
    iget-boolean p2, p0, Lde/mrapp/android/tabswitcher/Tab;->progressBarShown:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget p2, p0, Lde/mrapp/android/tabswitcher/Tab;->progressBarColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget-object p2, p0, Lde/mrapp/android/tabswitcher/Tab;->parameters:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

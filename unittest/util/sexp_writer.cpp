#include "unittest/util/my_snprintf.h"
#include "unittest/util/sexp_writer.hpp"

item_c::~item_c ()
{
}
// --------------------------------------------
bool item_c::is_list () const
{
  return m_is_list;
}
// --------------------------------------------
item_c::item_c (bool lst)
    : m_is_list (lst)
{
}
// =============================================
#define BEA_NV_INIT(FMT, V)					\
  static const size_t bea_nv_BUFF_LEN = 64;			\
  static char bea_nv_BUFF [bea_nv_BUFF_LEN];			\
  my_snprintf (bea_nv_BUFF, bea_nv_BUFF_LEN, FMT, V);		\
  m_value = std::string (bea_nv_BUFF);

// -----------------------------------------------------------------------
name_value_c::name_value_c (const char* name_, Int8 v)
  : item_c (false),
    m_name (name_)
{
  BEA_NV_INIT ("0x%X", (int)v & 0xFF);
}
// ------------------------------------------------------------
name_value_c::name_value_c (const char* name_, UInt8 v)
  : item_c (false),
    m_name (name_)
{
  BEA_NV_INIT ("0x%X", (int)v & 0xFF);
}
// ------------------------------------------------------------
name_value_c::name_value_c (const char* name_, Int16 v)
  : item_c (false),
    m_name (name_)
{
  BEA_NV_INIT ("0x%X", v);
}
// ------------------------------------------------------------
name_value_c::name_value_c (const char* name_, UInt16 v)
  : item_c (false),
    m_name (name_)
{
  BEA_NV_INIT ("0x%X", v);
}
// ------------------------------------------------------------
name_value_c::name_value_c (const char* name_, Int32 v)
  : item_c (false),
    m_name (name_)
{
  BEA_NV_INIT ("0x%X", v);
}
// ------------------------------------------------------------
name_value_c::name_value_c (const char* name_, UInt32 v)
  : item_c (false),
    m_name (name_)
{
  BEA_NV_INIT ("0x%X", v);
}
// ------------------------------------------------------------
name_value_c::name_value_c (const char* name_, Int64 v)
  : item_c (false),
    m_name (name_)
{
#if defined(BEA_HAVE_INT64) && !defined(BEA_LONG_IS_64_BIT)
  BEA_NV_INIT ("0x%"I64_FMT"X", v);
#else
  BEA_NV_INIT ("0x%lX", v);
#endif
}
// ------------------------------------------------------------
name_value_c::name_value_c (const char* name_, UInt64 v)
  : item_c (false),
    m_name (name_)
{
  #if defined(BEA_HAVE_INT64) && !defined(BEA_LONG_IS_64_BIT)
  BEA_NV_INIT ("0x%"I64_FMT"X", v);
#else
  BEA_NV_INIT ("0x%lX", v);
#endif
}
// ------------------------------------------------------------
name_value_c::name_value_c (const char* name_, const char* v)
  : item_c  (false),
    m_name  (name_),
    m_value (v)
{
}
// ------------------------------------------------------------
name_value_c::name_value_c (const char* name_, const std::string& v)
  : item_c  (false),
    m_name  (name_),
    m_value (v)
{
}
// ------------------------------------------------------------
name_value_c::name_value_c (const char* name_, double v)
  : item_c (false),
    m_name (name_)
{
  BEA_NV_INIT ("%f", v);
  std::cout << m_value << std::endl;
}
// ------------------------------------------------------------
const std::string& name_value_c::name () const
{
  return m_name;
}
// -----------------------------------------------------------
const std::string& name_value_c::value () const
{
  return m_value;
}

// ============================================================
item_list_c::item_list_c (const char* name_)
  : item_c (true),
    m_name (name_)
{
}
// ---------------------------------------------------------------------
item_list_c::~item_list_c ()
{
  for (item_list_t::iterator i = m_list.begin (); i!=m_list.end (); i++)
    {
      delete *i;
    }
}
// ---------------------------------------------------------------------
item_list_c* item_list_c::append (const item_c* item)
{
  m_list.push_back (item);
  return this;
}
// ---------------------------------------------------------------------
item_list_c::iterator_t item_list_c::begin () const
{
  return m_list.begin ();
}
// ---------------------------------------------------------------------
item_list_c::iterator_t item_list_c::end () const
{
  return m_list.end ();
}
// ---------------------------------------------------------------------
const std::string& item_list_c::name () const
{
  return m_name;
}


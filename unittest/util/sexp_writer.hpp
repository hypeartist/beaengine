#ifndef __SEXP_WRITER_HPP__
#define __SEXP_WRITER_HPP__

#include <iostream>
#include <string>
#include <list>

#include <beaengine/BeaEngine.h>

#if defined(__WATCOMC__)
#define OS_STR(V) (V.c_str ())
#else
#define OS_STR(V) V
#endif


class item_c
{
public:
  virtual ~item_c ();
  bool is_list () const;
  virtual const std::string& name () const = 0;
protected:
  item_c (bool lst);
private:
  bool m_is_list;
};

class name_value_c : public item_c
{
public:
  name_value_c (const char* name, Int8 v);
  name_value_c (const char* name, UInt8 v);
  name_value_c (const char* name, Int16 v);
  name_value_c (const char* name, UInt16 v);
  name_value_c (const char* name, Int32 v);
  name_value_c (const char* name, UInt32 v);
  name_value_c (const char* name, Int64 v);
  name_value_c (const char* name, UInt64 v);
  name_value_c (const char* name, double v);
  name_value_c (const char* name, const char* v);
  name_value_c (const char* name, const std::string& v);


  const std::string& name () const;
  const std::string& value () const;
private:
  std::string m_name;
  std::string m_value;
};

class item_list_c : public item_c
{
public:
  typedef std::list <const item_c*>   item_list_t;
  typedef item_list_t::const_iterator iterator_t;
public:
  item_list_c (const char* name);
  ~item_list_c ();

  item_list_c* append (const item_c* item);

  iterator_t begin () const;
  iterator_t end () const;
  const std::string& name () const;
  
private:
  std::string m_name;
  item_list_t m_list;
};

template <typename T>
name_value_c* elem (const char* name, const T& v)
{
  return new name_value_c (name, v);
}

#endif
